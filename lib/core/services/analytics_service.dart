import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  static final AnalyticsService _instance = AnalyticsService._internal();
  factory AnalyticsService() => _instance;

  late FirebaseAnalytics _analytics;

  AnalyticsService._internal() {
    _analytics = FirebaseAnalytics.instance;
  }

  /// FirebaseAnalytics observer لتتبع ScreenViews تلقائيًا
  FirebaseAnalyticsObserver get observer => FirebaseAnalyticsObserver(analytics: _analytics);

  /// تسجيل شاشة جديدة
  Future<void> setCurrentScreen(String screenName) async {
    await _analytics.logScreenView(screenName: screenName, screenClass: screenName);
    print("Screen viewed: $screenName");
  }

  /// تسجيل حدث مخصص
  Future<void> logEvent(String name, {Map<String, Object>? parameters}) async {
    await _analytics.logEvent(name: name, parameters: parameters);
    print("Event logged: $name, params: $parameters");
  }

  /// تسجيل حدث "شراء" مثلاً
  Future<void> logPurchase({required double value, String? currency}) async {
    await _analytics.logEvent(name: 'purchase', parameters: {'value': value, 'currency': currency ?? 'USD'});
    print("Purchase logged: $value $currency");
  }

  /// تسجيل خصائص المستخدم (اختياري)
  Future<void> setUserProperty({required String name, required String value}) async {
    await _analytics.setUserProperty(name: name, value: value);
    print("User property set: $name = $value");
  }

  /// تعيين User ID (مثلاً عند تسجيل الدخول)
  Future<void> setUserId(String userId) async {
    await _analytics.setUserId(id: userId);
    print("User ID set: $userId");
  }
}
