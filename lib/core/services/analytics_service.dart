import 'package:flutter/foundation.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:tiktok_events_sdk/tiktok_events_sdk.dart';

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

// ─────────────────────────────────────────────────────────
// Event names (Better to use TikTok Standard Events)
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
// Analytics Service
// ─────────────────────────────────────────────────────────
class AnalyticsService {
  AnalyticsService._();
  static final AnalyticsService instance = AnalyticsService._();

  late AppType _appType;
  bool _initialized = false;

  FirebaseAnalytics get _firebase => FirebaseAnalytics.instance;

  // ─── INIT ───────────────────────────────────────────────
  Future<void> init(AppType appType) async {
    if (_initialized) return;

    _appType = appType;

    await _initFirebase();
    await _initTikTok();

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
  // TikTok Init (NEW SDK)
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
  // Core Tracker
  // ───────────────────────────────────────────────────────
  Future<void> _track(String eventName, {Map<String, dynamic>? parameters}) async {
    if (!_initialized) {
      debugPrint('[Analytics] NOT initialized');
      return;
    }

    final params = parameters ?? {};

    await Future.wait([_trackFirebase(eventName, params), _trackTikTok(eventName, params)]);
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
    await FirebaseAnalytics.instance.logEvent(name: screenName, parameters: {'screen_class': screenName});
    debugPrint("Screen viewed: $screenName");
  }
}
