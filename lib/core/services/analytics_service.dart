import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:tiktok_events_sdk/tiktok_events_sdk.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:appsflyer_sdk/appsflyer_sdk.dart';

import '../../main.dart';

// ─── App type ─────────────────────────────────────────────
enum AppType { rider, driver }

// ─── TikTok credentials ───────────────────────────────────
class _TikTokCredentials {
  static const String androidAppId = '7615187270806585361';
  static const String androidTTId = 'TTKTyUw4f5BbUYZ6rWNMEif9zoiqAyX0';

  static const String iosAppId = '7615186865607573521';
  static const String iosTTId = 'TTHepvoIdH92V3EABh0IQLnF7Cg99DpH';
}

// ─── AppsFlyer credentials ────────────────────────────────
class _AppsFlyerCredentials {
  static const String devKey = 'kkXYoCRH7Aw8KDPBjj5YyE';
  static const String iosAppId = '6748653527';
}

// ─────────────────────────────────────────────────────────
// Event names (Unified)
// ─────────────────────────────────────────────────────────
class AnalyticsEvents {
  static const String install = 'InstallApp';
  static const String appOpen = 'LaunchApp';
  static const String signUp = 'CompleteRegistration';
  static const String login = 'Login';
  static const String completeRegistration = 'CompleteRegistration';
  static const String searchRide = 'Search';
  static const String requestRide = 'InitiateCheckout';
  static const String rideCompleted = 'Purchase';
}

// ─────────────────────────────────────────────────────────
// Facebook Standard Events Mapping
// ─────────────────────────────────────────────────────────
class FacebookEvents {
  static const String completeRegistration = "fb_mobile_complete_registration";
  static const String login = "fb_mobile_login";
  static const String purchase = "fb_mobile_purchase";
  static const String initiateCheckout = "fb_mobile_initiated_checkout";
  static const String search = "fb_mobile_search";
}

// ─────────────────────────────────────────────────────────
// AppsFlyer Standard Events Mapping
// ─────────────────────────────────────────────────────────
class AppsFlyerEvents {
  static const String completeRegistration = 'af_complete_registration';
  static const String login = 'af_login';
  static const String purchase = 'af_purchase';
  static const String initiateCheckout = 'af_initiated_checkout';
  static const String search = 'af_search';
  static const String install = 'af_install';
  static const String appOpen = 'af_app_opened';
}

// ─────────────────────────────────────────────────────────
// Analytics Service
// ─────────────────────────────────────────────────────────
class AnalyticsService {
  AnalyticsService._();
  static final AnalyticsService instance = AnalyticsService._();

  late AppType _appType;
  bool _initialized = false;

  FirebaseAnalytics get _firebase => FirebaseAnalytics.instance;
  final FacebookAppEvents _facebook = FacebookAppEvents();
  AppsflyerSdk? _appsFlyer;

  // ─── INIT ───────────────────────────────────────────────
  Future<void> init(AppType appType) async {
    if (_initialized) return;

    _appType = appType;

    await _initFirebase();
    await _initTikTok();
    await _initFacebook();
    await _initAppsFlyer();

    _initialized = true;

    debugPrint('[Analytics] Initialized for ${appType.name}');
  }

  // ───────────────────────────────────────────────────────
  // Firebase Init
  // ───────────────────────────────────────────────────────
  Future<void> _initFirebase() async {
    try {
      await _firebase.setAnalyticsCollectionEnabled(true);
      await _firebase.setUserProperty(name: 'app_type', value: _appType.name);
      debugPrint('[Firebase] Ready');
    } catch (e) {
      debugPrint('[Firebase] Error: $e');
    }
  }

  // ───────────────────────────────────────────────────────
  // TikTok Init
  // ───────────────────────────────────────────────────────
  Future<void> _initTikTok() async {
    try {
      const iosOptions = TikTokIosOptions(disableTracking: false, disableAutomaticTracking: true, disableSKAdNetworkSupport: true);

      const androidOptions = TikTokAndroidOptions(disableAutoStart: true, enableAutoIapTrack: true, disableAdvertiserIDCollection: false);

      await TikTokEventsSdk.initSdk(
        androidAppId: _TikTokCredentials.androidAppId,
        tikTokAndroidId: _TikTokCredentials.androidTTId,
        iosAppId: _TikTokCredentials.iosAppId,
        tiktokIosId: _TikTokCredentials.iosTTId,
        isDebugMode: true,
        logLevel: TikTokLogLevel.debug,
        androidOptions: androidOptions,
        iosOptions: iosOptions,
      );

      logger.i('[TikTok] Ready');
    } catch (e) {
      debugPrint('[TikTok] Error: $e');
    }
  }

  // ───────────────────────────────────────────────────────
  // Facebook Init
  // ───────────────────────────────────────────────────────
  Future<void> _initFacebook() async {
    try {
      await _facebook.setAdvertiserTracking(enabled: true);
      debugPrint('[Facebook] Ready');
    } catch (e) {
      debugPrint('[Facebook] Error: $e');
    }
  }

  // ───────────────────────────────────────────────────────
  // AppsFlyer Init
  // ───────────────────────────────────────────────────────
  Future<void> _initAppsFlyer() async {
    try {
      final options = AppsFlyerOptions(
        afDevKey: _AppsFlyerCredentials.devKey,
        appId: Platform.isIOS ? _AppsFlyerCredentials.iosAppId : '',
        showDebug: kDebugMode,
        timeToWaitForATTUserAuthorization: 50,
      );
      _appsFlyer = AppsflyerSdk(options);

      // Set global custom data
      _appsFlyer!.setAdditionalData({'app_type': _appType.name});

      // Listen for install conversion data
      _appsFlyer!.onInstallConversionData((data) {
        debugPrint('[AppsFlyer] Conversion data: $data');
      });

      // Listen for deep link data
      _appsFlyer!.onDeepLinking((result) {
        debugPrint('[AppsFlyer] Deep link: ${result.deepLink}');
      });

      await _appsFlyer!.initSdk(registerConversionDataCallback: true, registerOnAppOpenAttributionCallback: true, registerOnDeepLinkingCallback: true);

      debugPrint('[AppsFlyer] Ready');
    } catch (e) {
      debugPrint('[AppsFlyer] Error: $e');
    }
  }

  // ───────────────────────────────────────────────────────
  // Core Tracker
  // ───────────────────────────────────────────────────────
  Future<void> _track(String eventName, {Map<String, dynamic>? parameters}) async {
    if (!_initialized) {
      debugPrint('[Analytics] NOT initialized');
      return;
    }

    final params = parameters ?? {};

    await Future.wait([_trackFirebase(eventName, params), _trackTikTok(eventName, params), _trackFacebook(eventName, params), _trackAppsFlyer(eventName, params)]);
  }

  // ───────────────────────────────────────────────────────
  // Firebase Tracking
  // ───────────────────────────────────────────────────────
  Future<void> _trackFirebase(String eventName, Map<String, dynamic> params) async {
    try {
      final safeParams = <String, Object>{};

      params.forEach((k, v) {
        if (v is num || v is bool) {
          safeParams[k] = v;
        } else if (v != null) {
          safeParams[k] = v.toString();
        }
      });

      safeParams['app_type'] = _appType.name;

      await _firebase.logEvent(name: eventName, parameters: safeParams.isEmpty ? null : safeParams);

      debugPrint('[Firebase] $eventName sent');
    } catch (e) {
      debugPrint('[Firebase] Error: $e');
    }
  }

  // ───────────────────────────────────────────────────────
  // TikTok Tracking
  // ───────────────────────────────────────────────────────
  Future<void> _trackTikTok(String eventName, Map<String, dynamic> params) async {
    try {
      final event = TikTokEvent(
        eventName: eventName,
        properties: EventProperties(customProperties: params.map((k, v) => MapEntry(k, v.toString()))),
      );

      await TikTokEventsSdk.logEvent(event: event);
      debugPrint('[TikTok] Event sent: $eventName');
    } catch (e) {
      debugPrint('[TikTok] Track error: $e');
    }
  }

  // ───────────────────────────────────────────────────────
  // Facebook Tracking
  // ───────────────────────────────────────────────────────
  Future<void> _trackFacebook(String eventName, Map<String, dynamic> params) async {
    try {
      final safeParams = <String, dynamic>{};
      params.forEach((k, v) {
        if (v != null) safeParams[k] = v;
      });

      await _facebook.logEvent(name: _mapFacebookEvent(eventName), parameters: safeParams.isEmpty ? null : safeParams);

      debugPrint('[Facebook] Event sent: $eventName');
    } catch (e) {
      debugPrint('[Facebook] Track error: $e');
    }
  }

  // ───────────────────────────────────────────────────────
  // AppsFlyer Tracking
  // ───────────────────────────────────────────────────────
  Future<void> _trackAppsFlyer(String eventName, Map<String, dynamic> params) async {
    if (_appsFlyer == null) return;

    try {
      final safeParams = <String, dynamic>{...params, 'app_type': _appType.name};

      await _appsFlyer!.logEvent(_mapAppsFlyerEvent(eventName), safeParams.isEmpty ? null : safeParams);

      debugPrint('[AppsFlyer] Event sent: $eventName');
    } catch (e) {
      debugPrint('[AppsFlyer] Track error: $e');
    }
  }

  // ───────────────────────────────────────────────────────
  // Facebook Event Mapping
  // ───────────────────────────────────────────────────────
  String _mapFacebookEvent(String event) {
    switch (event) {
      case AnalyticsEvents.signUp:
        return FacebookEvents.completeRegistration;
      case AnalyticsEvents.login:
        return FacebookEvents.login;
      case AnalyticsEvents.rideCompleted:
        return FacebookEvents.purchase;
      case AnalyticsEvents.requestRide:
        return FacebookEvents.initiateCheckout;
      case AnalyticsEvents.searchRide:
        return FacebookEvents.search;
      default:
        return event;
    }
  }

  // ───────────────────────────────────────────────────────
  // AppsFlyer Event Mapping
  // ───────────────────────────────────────────────────────
  String _mapAppsFlyerEvent(String event) {
    switch (event) {
      case AnalyticsEvents.signUp:
      case AnalyticsEvents.completeRegistration:
        return AppsFlyerEvents.completeRegistration;
      case AnalyticsEvents.login:
        return AppsFlyerEvents.login;
      case AnalyticsEvents.rideCompleted:
        return AppsFlyerEvents.purchase;
      case AnalyticsEvents.requestRide:
        return AppsFlyerEvents.initiateCheckout;
      case AnalyticsEvents.searchRide:
        return AppsFlyerEvents.search;
      case AnalyticsEvents.install:
        return AppsFlyerEvents.install;
      case AnalyticsEvents.appOpen:
        return AppsFlyerEvents.appOpen;
      default:
        return event;
    }
  }

  // ═══════════════════════════════════════════════════════
  // PUBLIC EVENTS
  // ═══════════════════════════════════════════════════════

  Future<void> trackInstall() async {
    await _track(AnalyticsEvents.install);
  }

  Future<void> trackAppOpen() async {
    await _track(AnalyticsEvents.appOpen);
  }

  Future<void> trackSignUp({String method = 'phone'}) async {
    await _track(AnalyticsEvents.signUp, parameters: {'method': method});
  }

  Future<void> trackLogin({String method = 'phone'}) async {
    await _track(AnalyticsEvents.login, parameters: {'method': method});
  }

  Future<void> trackCompleteRegistration() async {
    await _track(AnalyticsEvents.completeRegistration);
  }

  Future<void> setCurrentScreen(String screenName) async {
    await _firebase.logEvent(name: screenName, parameters: {'screen_class': screenName});

    debugPrint("Screen viewed: $screenName");
  }

  // ───────────────────────────────────────────────────────
  // AppsFlyer User Identity (optional but recommended)
  // ───────────────────────────────────────────────────────

  /// Call after login/signup to associate events with the user
  void setAppsFlyerUserId(String userId) {
    _appsFlyer?.setCustomerUserId(userId);
    debugPrint('[AppsFlyer] Customer user ID set: $userId');
  }
}
