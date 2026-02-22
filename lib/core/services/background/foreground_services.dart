// ignore_for_file: unnecessary_cast
import 'dart:async';
import 'dart:math';
import 'dart:io';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logger/logger.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

import '../../../firebase_options.dart';
import '../../../main.dart';

/// 🎯 إعدادات ديناميكية
class DynamicConfig {
  static bool _isInTrip = false;
  static bool get isInTrip => _isInTrip;
  static void setTripMode(bool inTrip) => _isInTrip = inTrip;
  static Duration get periodicDuration => _isInTrip ? const Duration(seconds: 30) : const Duration(seconds: 20);
  static double get accuracyThreshold => _isInTrip ? 2.0 : 10.0;
  static int get distanceFilter => _isInTrip ? 3 : 10;
  static double get minMovingSpeedKmh => _isInTrip ? 3.0 : 0.0;
  static bool get useSensors => _isInTrip;
}

/// 🚗 إدارة كشف التوقف التام للسيارة أثناء تتبع الموقع.
class StopManager {
  static bool _hasSentStopLocation = false;
  static DateTime? _stopStartTime;
  static const Duration _stopConfirmationTime = Duration(seconds: 10);
  static final _MovingAverage _speedAvg = _MovingAverage(5);
  static void resetStopState() {
    _hasSentStopLocation = false;
    _stopStartTime = null;
  }

  static void addSpeed(double speedKmh) => _speedAvg.add(speedKmh);
  static bool canSendStopLocation() {
    double avgSpeed = _speedAvg.avg;
    if (avgSpeed > DynamicConfig.minMovingSpeedKmh) {
      resetStopState();
      return false;
    }
    _stopStartTime ??= DateTime.now();
    bool isConfirmedStop = DateTime.now().difference(_stopStartTime!) >= _stopConfirmationTime;
    if (isConfirmedStop && !_hasSentStopLocation) {
      _markStopLocationSent();
      return true;
    }
    return false;
  }

  static void _markStopLocationSent() => _hasSentStopLocation = true;
  static Map<String, dynamic> getStopInfo() => {
    'has_sent_stop': _hasSentStopLocation,
    'stop_start_time': _stopStartTime?.toIso8601String(),
    'stop_duration': _stopStartTime != null ? DateTime.now().difference(_stopStartTime!).inSeconds : 0,
    'avg_speed': _speedAvg.avg,
  };
}

/// 📊 إحصائيات الرحلة
class TripStatistics {
  static int totalUpdates = 0;
  static Map<String, int> updatesByReason = {};
  static int totalStops = 0;
  static void recordUpdate(String reason) {
    totalUpdates++;
    updatesByReason[reason] = (updatesByReason[reason] ?? 0) + 1;
    if (reason.contains('توقف تام')) totalStops++;
  }

  static void logStatistics() {
    logger.i('''
📊 ========== إحصائيات الرحلة ==========
📍 إجمالي التحديثات: $totalUpdates
🛑 عدد التوقفات: $totalStops
📈 التحديثات حسب السبب:
   🚀 بداية حركة: ${updatesByReason['بداية حركة بعد توقف'] ?? 0}
   🧭 دوران بوصلة: ${updatesByReason['دوران >= 30° (بوصلة)'] ?? 0}
   📡 دوران جيروسكوب: ${updatesByReason['دوران قوي (جيروسكوب)'] ?? 0}
   ⚡ تغيير سرعة: ${updatesByReason['تغيير سرعة مفاجئ'] ?? 0}
   ⏱️ تحديث دوري: ${updatesByReason['تحديث دوري في الرحلة'] ?? 0}
   🛑 توقف تام: ${updatesByReason['توقف تام 🛑'] ?? 0}
📊 ===================================
''');
  }
}

/// 📈 تنعيم البيانات
class _MovingAverage {
  final int window;
  final List<double> _vals = [];
  _MovingAverage(this.window);
  void add(double v) {
    _vals.add(v);
    if (_vals.length > window) _vals.removeAt(0);
  }

  double get avg => _vals.isEmpty ? 0.0 : _vals.reduce((a, b) => a + b) / _vals.length;
}

/// 📌 كلاس كشف الدوران (يمين / يسار / U-turn)
class TurnDetection {
  LatLng? lastPosition;
  double? lastHeading;
  final double turnThreshold = 30.0;
  final double uTurnThreshold = 140.0;
  final Logger logger;
  DateTime lastTurnTime = DateTime.fromMillisecondsSinceEpoch(0);
  Duration turnCooldown = const Duration(seconds: 3);

  TurnDetection({required this.logger});

  Future<void> updateTurn(LatLng newPosition, double compassHeading) async {
    final now = DateTime.now();
    if (now.difference(lastTurnTime) < turnCooldown) return;

    if (lastPosition != null && lastHeading != null) {
      final bearing = _calculateBearing(lastPosition!, newPosition);
      final diff = _angleDifference(lastHeading!, bearing);

      if (diff.abs() >= turnThreshold && diff.abs() < uTurnThreshold) {
        lastTurnTime = now;
        if (diff > 0) {
          logger.i('Right turn detected');
        } else {
          logger.i('Left turn detected');
        }
      } else if (diff.abs() >= uTurnThreshold) {
        lastTurnTime = now;
        logger.i('U-turn detected');
      }
    }

    lastPosition = newPosition;
    lastHeading = compassHeading;
  }

  double _calculateBearing(LatLng from, LatLng to) {
    final lat1 = from.latitude * pi / 180;
    final lon1 = from.longitude * pi / 180;
    final lat2 = to.latitude * pi / 180;
    final lon2 = to.longitude * pi / 180;

    final y = sin(lon2 - lon1) * cos(lat2);
    final x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(lon2 - lon1);

    final bearing = atan2(y, x) * 180 / pi;
    return (bearing + 360) % 360;
  }

  double _angleDifference(double a, double b) {
    double diff = b - a;
    if (diff > 180) diff -= 360;
    if (diff < -180) diff += 360;
    return diff;
  }
}

/// 📁 تسجيل البيانات في ملف + Console (اختياري)
class FileLogger {
  final Logger? consoleLogger;
  File? _logFile;

  FileLogger({this.consoleLogger});

  /// تهيئة ملف السجل
  Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();
    _logFile = File('${directory.path}/turn_logs.txt');
    if (!await _logFile!.exists()) await _logFile!.create();
  }

  /// تسجيل رسالة في الملف وConsole
  Future<void> log(String message) async {
    final timestamp = DateTime.now().toIso8601String();
    await _logFile?.writeAsString('[$timestamp] $message\n', mode: FileMode.append);
    consoleLogger?.i('[$timestamp] $message');
  }
}

// ---------------------------------------------------------------------
// 🎯 نقطة الدخول في الخلفية (Background Entry Point)
// ---------------------------------------------------------------------
@pragma('vm:entry-point')
Future<void> backgroundEntryPoint(ServiceInstance service) async {
  DartPluginRegistrant.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  // -----------------------------------------------------------------
  // ✅ تهيئة Awesome Notifications داخل الـ isolate الخلفي
  // -----------------------------------------------------------------
  await AwesomeNotifications().initialize(
    "resource://drawable/app_icon", // أيقونة التطبيق (ضعها في res/drawable)
    [
      NotificationChannel(
        channelKey: 'foreground_channel',
        channelName: 'خدمة الخلفية',
        channelDescription: 'قناة إشعارات خدمة الخلفية',
        defaultColor: const Color(0xFF9D50DD),
        ledColor: Colors.white,
        importance: NotificationImportance.High,
        playSound: true,
        enableVibration: true,
      ),
    ],
    debug: true,
  );

  if (service is AndroidServiceInstance) {
    // ✅ عرض إشعار Foreground باستخدام Awesome Notifications
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 888, // يجب أن يطابق foregroundServiceNotificationId
        channelKey: 'foreground_channel',
        title: 'Jawad Driver',
        body: 'Tracking location in background',
        notificationLayout: NotificationLayout.Default,
        icon: 'resource://drawable/app_icon',
        largeIcon: 'resource://drawable/app_icon',
        autoDismissible: false, // يبقى الإشعار حتى يتم إلغاؤه يدوياً
      ),
    );

    // ✅ تفعيل وضع المقدمة (Foreground)
    await service.setAsForegroundService();

    // الاستماع لأوامر من الواجهة (اختياري)
    service.on('setAsForeground').listen((event) {
      service.setAsForegroundService();
    });
    service.on('setAsBackground').listen((event) {
      service.setAsBackgroundService();
    });
  }

  // VERY IMPORTANT: initialize Firebase again in this isolate
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  runZonedGuarded(() {}, (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  });

  // 📊 المتغيرات الأساسية
  double? lastHeading;
  DateTime lastLocationSendTime = DateTime.now().subtract(const Duration(seconds: 60));
  Position? lastPosition;
  final movingAvgLat = _MovingAverage(3);
  final movingAvgLng = _MovingAverage(3);
  LatLng? currentLatLng;

  // 📡 الاشتراكات
  StreamSubscription<CompassEvent>? compassSub;
  StreamSubscription<GyroscopeEvent>? gyroSub;
  StreamSubscription<Position>? positionStreamSub;
  final List<StreamSubscription> subscriptions = [];

  Future<void> cleanupSubscriptions() async {
    for (var sub in subscriptions) {
      try {
        await sub.cancel();
      } catch (e) {
        logger.i('❌ خطأ في إلغاء الاشتراك: $e');
      }
    }
    subscriptions.clear();
  }

  service.on('stopService').listen((event) async {
    await cleanupSubscriptions();
    TripStatistics.logStatistics();
    await service.stopSelf();
  });

  /// 🧹 إدارة الاشتراكات
  void addSubscription(StreamSubscription sub) => subscriptions.add(sub);

  /// 📍 إرسال ذكي للموقع - مع إشعار
  Future<void> safePrintCurrentLocation(String reason) async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        logger.i('📡 خدمة الموقع غير مفعلة على الجهاز');
        return;
      }

      LocationPermission perm = await Geolocator.checkPermission();
      if (perm == LocationPermission.denied || perm == LocationPermission.deniedForever) {
        logger.i('📡 لا يوجد إذن موقع');
        return;
      }

      Position pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(distanceFilter: 0, accuracy: LocationAccuracy.bestForNavigation),
        desiredAccuracy: LocationAccuracy.bestForNavigation,
      );

      double speedKmh = pos.speed * 3.6;
      lastPosition = pos;
      currentLatLng = LatLng(pos.latitude, pos.longitude);

      if (DynamicConfig.isInTrip == false ? pos.accuracy >= 10 : pos.accuracy > 5.0) {
        logger.i('📡 دقة الموقع منخفضة: ${pos.accuracy} متر - تم التخطي');
        return;
      }
      // إرسال البيانات إلى الواجهة عبر invoke
      service.invoke('updateLocation', {
        'latitude': pos.latitude,
        'longitude': pos.longitude,
        'accuracy': pos.accuracy,
        'speed': pos.speed,
        'in_trip': DynamicConfig.isInTrip,
        'reason': reason,
        'timestamp': DateTime.now().millisecondsSinceEpoch,
        'is_stop_location': false,
      });

      lastLocationSendTime = DateTime.now();
      TripStatistics.recordUpdate(reason);
      logger.i("📍 [${DynamicConfig.isInTrip ? 'TRIP' : 'NORMAL'}] → $reason - سرعة: ${speedKmh.toStringAsFixed(1)} كم/س - دقة: ${pos.accuracy.toStringAsFixed(1)} م");
    } catch (e, st) {
      logger.i('❌ خطأ في safePrintCurrentLocation: $e , $st');
    }
  }

  /// 🔄 تحديث إعدادات أجهزة الاستشعار
  DateTime lastTriggerTime = DateTime.fromMillisecondsSinceEpoch(0);
  TurnDetection? turnDetector;

  Future<void> updateSensorSubscriptions() async {
    await cleanupSubscriptions();

    if (!DynamicConfig.useSensors) return;

    turnDetector ??= TurnDetection(logger: logger);

    // ====== البوصلة (Compass) ======
    try {
      const headingThreshold = 5.0;
      const minTriggerGap = Duration(milliseconds: 700);

      compassSub = FlutterCompass.events!.listen((event) {
        final heading = event.heading;
        if (heading == null) return;

        if (lastHeading != null) {
          double diff = (heading - lastHeading!).abs();
          if (diff > 180) diff = 360 - diff;

          if (diff >= headingThreshold && DateTime.now().difference(lastTriggerTime) > minTriggerGap) {
            lastTriggerTime = DateTime.now();
            safePrintCurrentLocation('Compass rotation detected');
          }
        }

        lastHeading = heading;
      });

      addSubscription(compassSub!);
      logger.i('🧭 Compass enabled');
    } catch (e) {
      logger.i('❌ Compass failed: $e');
    }

    // ====== الجيروسكوب (Gyroscope) ======
    try {
      const gyroThreshold = 0.7;
      const minTriggerGap = Duration(milliseconds: 700);

      gyroSub = gyroscopeEvents.listen((gyro) {
        final magnitude = sqrt(gyro.x * gyro.x + gyro.y * gyro.y + gyro.z * gyro.z);

        if (magnitude > gyroThreshold && DateTime.now().difference(lastTriggerTime) > minTriggerGap) {
          lastTriggerTime = DateTime.now();
          safePrintCurrentLocation('Gyroscope strong turn');

          if (currentLatLng != null && lastHeading != null && DynamicConfig.isInTrip) {
            turnDetector!.updateTurn(currentLatLng!, lastHeading!);
          }
        }
      });

      addSubscription(gyroSub!);
      logger.i('📡 Gyroscope enabled');
    } catch (e) {
      logger.i('❌ Gyroscope failed: $e');
    }
  }

  /// 🛰️ بدء تدفق الموقع
  void startPositionStream() {
    try {
      positionStreamSub =
          Geolocator.getPositionStream(
            locationSettings: LocationSettings(accuracy: LocationAccuracy.bestForNavigation, distanceFilter: DynamicConfig.isInTrip ? 1 : 5),
          ).listen((Position pos) async {
            lastPosition = pos;
            currentLatLng = LatLng(pos.latitude, pos.longitude);
            double speedKmh = pos.speed * 3.6;

            if (speedKmh > 3.0) StopManager.resetStopState();

            movingAvgLat.add(pos.latitude);
            movingAvgLng.add(pos.longitude);

            if (lastHeading != null && DynamicConfig.isInTrip) {
              turnDetector!.updateTurn(currentLatLng!, lastHeading!);
            }

            // كشف تغيير السرعة المفاجئ
            if (lastPosition != null && speedKmh > 10) {
              double lastSpeedKmh = (lastPosition!.speed * 3.6);
              double speedChange = (speedKmh - lastSpeedKmh).abs();
              if (speedChange > 15) {
                safePrintCurrentLocation('تغيير سرعة مفاجئ');
              }
            }
          });
      addSubscription(positionStreamSub!);
    } catch (e, st) {
      logger.i('❌ فشل تدفق الموقع: $e , $st');
    }
  }

  // 🎛️ استقبال الأوامر من الواجهة
  service.on('setTripMode').listen((event) {
    final bool inTrip = event?['inTrip'] ?? false;
    DynamicConfig.setTripMode(inTrip);
    StopManager.resetStopState();

    logger.i('🔄 تغيير الوضع إلى: ${inTrip ? "رحلة 🚗" : "عادي 🏠"}');
    updateSensorSubscriptions();
  });

  service.on('getStatistics').listen((event) => TripStatistics.logStatistics());

  // 🚀 بدء الخدمة
  startPositionStream();
  updateSensorSubscriptions();
  logger.i('🎉 تم بدء خدمة الخلفية - وضع الرحلة');

  // ⏰ المؤقت الدوري الرئيسي (كل 5 ثوانٍ للتحقق)
  Timer.periodic(const Duration(seconds: 5), (timer) async {
    try {
      final now = DateTime.now();
      final timeSinceLastSend = now.difference(lastLocationSendTime).inSeconds;

      if (DynamicConfig.isInTrip) {
        if (timeSinceLastSend >= 30) {
          await safePrintCurrentLocation('تحديث دوري في الرحلة');
        }
      } else {
        if (timeSinceLastSend >= 30) {
          await safePrintCurrentLocation('تحديث دوري عادي');
        }
      }

      if (lastPosition != null) {
        final speedKmh = lastPosition!.speed * 3.6;
        StopManager.addSpeed(speedKmh);
        if (StopManager.canSendStopLocation()) {
          await safePrintCurrentLocation('كشف توقف تام');
        }
      }

      if (now.minute % 5 == 0 && now.second < 10) {
        TripStatistics.logStatistics();
      }
    } catch (e) {
      logger.i('❌ خطأ في المؤقت الدوري: $e');
    }
  });
}

// // ignore_for_file: unnecessary_cast
// import 'dart:async';
// import 'dart:math';
// import 'dart:io';
// import 'dart:ui';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_background_service/flutter_background_service.dart';
// import 'package:flutter_compass/flutter_compass.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:logger/logger.dart';
// import 'package:sensors_plus/sensors_plus.dart';
// import 'package:path_provider/path_provider.dart';

// import '../../../firebase_options.dart';
// import '../../../main.dart';

// /// 🎯 إعدادات ديناميكية
// class DynamicConfig {
//   static bool _isInTrip = false;
//   static bool get isInTrip => _isInTrip;
//   static void setTripMode(bool inTrip) => _isInTrip = inTrip;
//   static Duration get periodicDuration => _isInTrip ? const Duration(seconds: 30) : const Duration(seconds: 20);
//   static double get accuracyThreshold => _isInTrip ? 2.0 : 10.0;
//   static int get distanceFilter => _isInTrip ? 3 : 10;
//   static double get minMovingSpeedKmh => _isInTrip ? 3.0 : 0.0;
//   static bool get useSensors => _isInTrip;
// }

// /// 🚗 إدارة كشف التوقف التام للسيارة أثناء تتبع الموقع.
// class StopManager {
//   static bool _hasSentStopLocation = false;
//   static DateTime? _stopStartTime;
//   static const Duration _stopConfirmationTime = Duration(seconds: 10);
//   static final _MovingAverage _speedAvg = _MovingAverage(5);
//   static void resetStopState() {
//     _hasSentStopLocation = false;
//     _stopStartTime = null;
//   }

//   static void addSpeed(double speedKmh) => _speedAvg.add(speedKmh);
//   static bool canSendStopLocation() {
//     double avgSpeed = _speedAvg.avg;
//     if (avgSpeed > DynamicConfig.minMovingSpeedKmh) {
//       resetStopState();
//       return false;
//     }
//     _stopStartTime ??= DateTime.now();
//     bool isConfirmedStop = DateTime.now().difference(_stopStartTime!) >= _stopConfirmationTime;
//     if (isConfirmedStop && !_hasSentStopLocation) {
//       _markStopLocationSent();
//       return true;
//     }
//     return false;
//   }

//   static void _markStopLocationSent() => _hasSentStopLocation = true;
//   static Map<String, dynamic> getStopInfo() => {
//     'has_sent_stop': _hasSentStopLocation,
//     'stop_start_time': _stopStartTime?.toIso8601String(),
//     'stop_duration': _stopStartTime != null ? DateTime.now().difference(_stopStartTime!).inSeconds : 0,
//     'avg_speed': _speedAvg.avg,
//   };
// }

// /// 📊 إحصائيات الرحلة
// class TripStatistics {
//   static int totalUpdates = 0;
//   static Map<String, int> updatesByReason = {};
//   static int totalStops = 0;
//   static void recordUpdate(String reason) {
//     totalUpdates++;
//     updatesByReason[reason] = (updatesByReason[reason] ?? 0) + 1;
//     if (reason.contains('توقف تام')) totalStops++;
//   }

//   static void logStatistics() {
//     logger.i('''
// 📊 ========== إحصائيات الرحلة ==========
// 📍 إجمالي التحديثات: $totalUpdates
// 🛑 عدد التوقفات: $totalStops
// 📈 التحديثات حسب السبب:
//    🚀 بداية حركة: ${updatesByReason['بداية حركة بعد توقف'] ?? 0}
//    🧭 دوران بوصلة: ${updatesByReason['دوران >= 30° (بوصلة)'] ?? 0}
//    📡 دوران جيروسكوب: ${updatesByReason['دوران قوي (جيروسكوب)'] ?? 0}
//    ⚡ تغيير سرعة: ${updatesByReason['تغيير سرعة مفاجئ'] ?? 0}
//    ⏱️ تحديث دوري: ${updatesByReason['تحديث دوري في الرحلة'] ?? 0}
//    🛑 توقف تام: ${updatesByReason['توقف تام 🛑'] ?? 0}
// 📊 ===================================
// ''');
//   }
// }

// /// 📈 تنعيم البيانات
// class _MovingAverage {
//   final int window;
//   final List<double> _vals = [];
//   _MovingAverage(this.window);
//   void add(double v) {
//     _vals.add(v);
//     if (_vals.length > window) _vals.removeAt(0);
//   }

//   double get avg => _vals.isEmpty ? 0.0 : _vals.reduce((a, b) => a + b) / _vals.length;
// }

// /// 🎯 نقطة الدخول في الخلفية
// @pragma('vm:entry-point')
// Future<void> backgroundEntryPoint(ServiceInstance service) async {
//   DartPluginRegistrant.ensureInitialized();
//   WidgetsFlutterBinding.ensureInitialized();
//   if (service is AndroidServiceInstance) {
//     await service.setAsForegroundService();
//     service.setForegroundNotificationInfo(title: "Jawad Driver", content: "Tracking location in background");
//     service.on('setAsForeground').listen((event) {
//       service.setAsForegroundService();
//     });
//     service.on('setAsBackground').listen((event) {
//       service.setAsBackgroundService();
//     });
//   }

//   // VERY IMPORTANT: initialize Firebase again in this isolate
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
//   runZonedGuarded(() {}, (error, stack) {
//     FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
//   });
//   // 📊 المتغيرات الأساسية
//   double? lastHeading;
//   DateTime lastLocationSendTime = DateTime.now().subtract(const Duration(seconds: 60));
//   Position? lastPosition;
//   final movingAvgLat = _MovingAverage(3);
//   final movingAvgLng = _MovingAverage(3);
//   LatLng? currentLatLng;

//   // 📡 الاشتراكات
//   StreamSubscription<CompassEvent>? compassSub;
//   StreamSubscription<GyroscopeEvent>? gyroSub;
//   StreamSubscription<Position>? positionStreamSub;
//   final List<StreamSubscription> subscriptions = [];

//   if (service is AndroidServiceInstance) {
//     service.on('setAsForeground').listen((event) {
//       service.setAsForegroundService();
//     });
//     service.on('setAsBackground').listen((event) {
//       service.setAsBackgroundService();
//     });
//   }
//   Future<void> cleanupSubscriptions() async {
//     for (var sub in subscriptions) {
//       try {
//         await sub.cancel();
//       } catch (e) {
//         logger.i('❌ خطأ في إلغاء الاشتراك: $e');
//       }
//     }
//     subscriptions.clear();
//   }

//   service.on('stopService').listen((event) async {
//     await cleanupSubscriptions();
//     TripStatistics.logStatistics();
//     await service.stopSelf();
//   });

//   /// 🧹 إدارة الاشتراكات
//   void addSubscription(StreamSubscription sub) => subscriptions.add(sub);

//   /// 📍 إرسال ذكي للموقع - معدل
//   Future<void> safePrintCurrentLocation(String reason) async {
//     try {
//       bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//       if (!serviceEnabled) {
//         logger.i('📡 خدمة الموقع غير مفعلة على الجهاز');
//         return;
//       }

//       LocationPermission perm = await Geolocator.checkPermission();
//       if (perm == LocationPermission.denied || perm == LocationPermission.deniedForever) {
//         logger.i('📡 لا يوجد إذن موقع');
//         return;
//       }

//       Position pos = await Geolocator.getCurrentPosition(
//         locationSettings: const LocationSettings(distanceFilter: 0, accuracy: LocationAccuracy.bestForNavigation),
//         desiredAccuracy: LocationAccuracy.bestForNavigation,
//       );

//       double speedKmh = pos.speed * 3.6;
//       lastPosition = pos;
//       currentLatLng = LatLng(pos.latitude, pos.longitude);

//       if (DynamicConfig.isInTrip == false ? pos.accuracy >= 10 : pos.accuracy > 5.0) {
//         logger.i('📡 دقة الموقع منخفضة: ${pos.accuracy} متر - تم التخطي');
//         return;
//       }

//       service.invoke('updateLocation', {
//         'latitude': pos.latitude,
//         'longitude': pos.longitude,
//         'accuracy': pos.accuracy,
//         'speed': pos.speed,
//         'in_trip': DynamicConfig.isInTrip,
//         'reason': reason,
//         'timestamp': DateTime.now().millisecondsSinceEpoch,
//         'is_stop_location': false,
//       });

//       lastLocationSendTime = DateTime.now();
//       TripStatistics.recordUpdate(reason);

//       logger.i("📍 [${DynamicConfig.isInTrip ? 'TRIP' : 'NORMAL'}] → $reason - سرعة: ${speedKmh.toStringAsFixed(1)} كم/س - دقة: ${pos.accuracy.toStringAsFixed(1)} م");
//     } catch (e, st) {
//       logger.i('❌ خطأ في safePrintCurrentLocation: $e , $st');
//     }
//   }

//   /// 🔄 تحديث إعدادات أجهزة الاستشعار
//   DateTime lastTriggerTime = DateTime.fromMillisecondsSinceEpoch(0);
//   TurnDetection? turnDetector;

//   Future<void> updateSensorSubscriptions() async {
//     await cleanupSubscriptions();

//     if (!DynamicConfig.useSensors) return;

//     turnDetector ??= TurnDetection(logger: logger);

//     // ====== البوصلة (Compass) ======
//     try {
//       const headingThreshold = 5.0;
//       const minTriggerGap = Duration(milliseconds: 700);

//       compassSub = FlutterCompass.events!.listen((event) {
//         final heading = event.heading;
//         if (heading == null) return;

//         if (lastHeading != null) {
//           double diff = (heading - lastHeading!).abs();
//           if (diff > 180) diff = 360 - diff;

//           if (diff >= headingThreshold && DateTime.now().difference(lastTriggerTime) > minTriggerGap) {
//             lastTriggerTime = DateTime.now();
//             safePrintCurrentLocation('Compass rotation detected');
//           }
//         }

//         lastHeading = heading;
//       });

//       addSubscription(compassSub!);
//       logger.i('🧭 Compass enabled');
//     } catch (e) {
//       logger.i('❌ Compass failed: $e');
//     }

//     // ====== الجيروسكوب (Gyroscope) ======
//     try {
//       const gyroThreshold = 0.7;
//       const minTriggerGap = Duration(milliseconds: 700);

//       gyroSub = gyroscopeEvents.listen((gyro) {
//         final magnitude = sqrt(gyro.x * gyro.x + gyro.y * gyro.y + gyro.z * gyro.z);

//         if (magnitude > gyroThreshold && DateTime.now().difference(lastTriggerTime) > minTriggerGap) {
//           lastTriggerTime = DateTime.now();
//           safePrintCurrentLocation('Gyroscope strong turn');

//           if (currentLatLng != null && lastHeading != null && DynamicConfig.isInTrip) {
//             turnDetector!.updateTurn(currentLatLng!, lastHeading!);
//           }
//         }
//       });

//       addSubscription(gyroSub!);
//       logger.i('📡 Gyroscope enabled');
//     } catch (e) {
//       logger.i('❌ Gyroscope failed: $e');
//     }
//   }

//   /// 🛰️ بدء تدفق الموقع
//   void startPositionStream() {
//     try {
//       positionStreamSub =
//           Geolocator.getPositionStream(
//             locationSettings: LocationSettings(accuracy: LocationAccuracy.bestForNavigation, distanceFilter: DynamicConfig.isInTrip ? 1 : 5),
//           ).listen((Position pos) async {
//             lastPosition = pos;
//             currentLatLng = LatLng(pos.latitude, pos.longitude);
//             double speedKmh = pos.speed * 3.6;

//             if (speedKmh > 3.0) StopManager.resetStopState();

//             movingAvgLat.add(pos.latitude);
//             movingAvgLng.add(pos.longitude);

//             if (lastHeading != null && DynamicConfig.isInTrip) {
//               turnDetector!.updateTurn(currentLatLng!, lastHeading!);
//             }

//             // كشف تغيير السرعة المفاجئ
//             if (lastPosition != null && speedKmh > 10) {
//               double lastSpeedKmh = (lastPosition!.speed * 3.6);
//               double speedChange = (speedKmh - lastSpeedKmh).abs();
//               if (speedChange > 15) {
//                 safePrintCurrentLocation('تغيير سرعة مفاجئ');
//               }
//             }
//           });
//       addSubscription(positionStreamSub!);
//     } catch (e, st) {
//       logger.i('❌ فشل تدفق الموقع: $e , $st');
//     }
//   }

//   // 🎛️ استقبال الأوامر من الواجهة
//   service.on('setTripMode').listen((event) {
//     final bool inTrip = event?['inTrip'] ?? false;
//     DynamicConfig.setTripMode(inTrip);
//     StopManager.resetStopState();

//     logger.i('🔄 تغيير الوضع إلى: ${inTrip ? "رحلة 🚗" : "عادي 🏠"}');
//     updateSensorSubscriptions();
//   });

//   service.on('getStatistics').listen((event) => TripStatistics.logStatistics());

//   // 🚀 بدء الخدمة
//   startPositionStream();
//   updateSensorSubscriptions();
//   logger.i('🎉 تم بدء خدمة الخلفية - وضع الرحلة');

//   // ⏰ المؤقت الدوري الرئيسي
//   Timer.periodic(const Duration(seconds: 5), (timer) async {
//     try {
//       final now = DateTime.now();
//       final timeSinceLastSend = now.difference(lastLocationSendTime).inSeconds;

//       if (DynamicConfig.isInTrip) {
//         if (timeSinceLastSend >= 30) {
//           await safePrintCurrentLocation('تحديث دوري في الرحلة');
//         }
//       } else {
//         if (timeSinceLastSend >= 30) {
//           await safePrintCurrentLocation('تحديث دوري عادي');
//         }
//       }

//       if (lastPosition != null) {
//         final speedKmh = lastPosition!.speed * 3.6;
//         StopManager.addSpeed(speedKmh);
//         if (StopManager.canSendStopLocation()) {
//           await safePrintCurrentLocation('كشف توقف تام');
//         }
//       }

//       if (now.minute % 5 == 0 && now.second < 10) {
//         TripStatistics.logStatistics();
//       }
//     } catch (e) {
//       logger.i('❌ خطأ في المؤقت الدوري: $e');
//     }
//   });
// }

// /// 📌 كلاس كشف الدوران (يمين / يسار / U-turn)
// class TurnDetection {
//   LatLng? lastPosition;
//   double? lastHeading;
//   final double turnThreshold = 30.0;
//   final double uTurnThreshold = 140.0;
//   final Logger logger;
//   DateTime lastTurnTime = DateTime.fromMillisecondsSinceEpoch(0);
//   Duration turnCooldown = const Duration(seconds: 3);

//   TurnDetection({required this.logger});

//   Future<void> updateTurn(LatLng newPosition, double compassHeading) async {
//     final now = DateTime.now();
//     if (now.difference(lastTurnTime) < turnCooldown) return;

//     if (lastPosition != null && lastHeading != null) {
//       final bearing = _calculateBearing(lastPosition!, newPosition);
//       final diff = _angleDifference(lastHeading!, bearing);

//       if (diff.abs() >= turnThreshold && diff.abs() < uTurnThreshold) {
//         lastTurnTime = now;
//         if (diff > 0) {
//           logger.i('Right turn detected');
//         } else {
//           logger.i('Left turn detected');
//         }
//       } else if (diff.abs() >= uTurnThreshold) {
//         lastTurnTime = now;
//         logger.i('U-turn detected');
//       }
//     }

//     lastPosition = newPosition;
//     lastHeading = compassHeading;
//   }

//   double _calculateBearing(LatLng from, LatLng to) {
//     final lat1 = from.latitude * pi / 180;
//     final lon1 = from.longitude * pi / 180;
//     final lat2 = to.latitude * pi / 180;
//     final lon2 = to.longitude * pi / 180;

//     final y = sin(lon2 - lon1) * cos(lat2);
//     final x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(lon2 - lon1);

//     final bearing = atan2(y, x) * 180 / pi;
//     return (bearing + 360) % 360;
//   }

//   double _angleDifference(double a, double b) {
//     double diff = b - a;
//     if (diff > 180) diff -= 360;
//     if (diff < -180) diff += 360;
//     return diff;
//   }
// }

// /// 📁 تسجيل البيانات في ملف + Console
// class FileLogger {
//   final Logger? consoleLogger;
//   File? _logFile;

//   FileLogger({this.consoleLogger});

//   /// تهيئة ملف السجل
//   Future<void> init() async {
//     final directory = await getApplicationDocumentsDirectory();
//     _logFile = File('${directory.path}/turn_logs.txt');
//     if (!await _logFile!.exists()) await _logFile!.create();
//   }

//   /// تسجيل رسالة في الملف وConsole
//   Future<void> log(String message) async {
//     final timestamp = DateTime.now().toIso8601String();
//     await _logFile?.writeAsString('[$timestamp] $message\n', mode: FileMode.append);
//     consoleLogger?.i('[$timestamp] $message');
//   }
// }
