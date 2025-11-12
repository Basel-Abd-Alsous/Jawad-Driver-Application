// ignore_for_file: unnecessary_cast
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sensors_plus/sensors_plus.dart';

import '../../../main.dart';

/// 🎯 Enhanced Dynamic Settings
class DynamicConfig {
  static bool _isInTrip = false;
  static bool get isInTrip => _isInTrip;
  static void setTripMode(bool inTrip) => _isInTrip = inTrip;
  static Duration get periodicDuration => _isInTrip ? Duration(seconds: 30) : Duration(seconds: 20);
  static double get accuracyThreshold => _isInTrip ? 5.0 : 15.0; // More strict accuracy
  static int get distanceFilter => _isInTrip ? 5 : 15;
  static double get minMovingSpeedKmh => _isInTrip ? 2.0 : 0.0;
  static bool get useSensors => _isInTrip;

  // Enhanced trip settings
  static double get headingChangeThreshold => 30.0; // 30° threshold
  static double get roundaboutGyroThreshold => 2.5; // Higher threshold for roundabouts
  static int get minSpeedForDirectionCheck => 5; // km/h
}

/// 🧭 Enhanced Direction Manager for opposite direction detection
class DirectionManager {
  static final List<double> _recentHeadings = [];
  static final List<Position> _recentPositions = [];
  static const int _maxHistorySize = 10;
  static double? _primaryDirection;

  /// 🔄 Add new position and heading data
  static void updateData(Position position, double? heading) {
    if (heading != null) {
      _recentHeadings.add(heading);
      if (_recentHeadings.length > _maxHistorySize) {
        _recentHeadings.removeAt(0);
      }
    }

    _recentPositions.add(position);
    if (_recentPositions.length > _maxHistorySize) {
      _recentPositions.removeAt(0);
    }

    // Update primary direction if we have enough data
    if (_recentHeadings.length >= 3) {
      _updatePrimaryDirection();
    }
  }

  /// 🧭 Calculate primary travel direction
  static void _updatePrimaryDirection() {
    if (_recentHeadings.isEmpty) {
      _primaryDirection = null;
      return;
    }
    double sinSum = 0, cosSum = 0;
    for (var heading in _recentHeadings) {
      sinSum += sin(heading * pi / 180);
      cosSum += cos(heading * pi / 180);
    }
    double direction = atan2(sinSum, cosSum) * 180 / pi;

    if (direction < 0) {
      direction += 360;
    }

    _primaryDirection = direction;
  }

  /// 🚫 Check if current direction is opposite to travel direction
  static bool isOppositeDirection(double currentHeading, double currentSpeedKmh) {
    if (currentSpeedKmh < DynamicConfig.minSpeedForDirectionCheck) return false;
    if (_primaryDirection == null) return false;
    if (_recentHeadings.length < 3) return false;

    double diff = (currentHeading - _primaryDirection!).abs();
    if (diff > 180) diff = 360 - diff;

    // If difference is more than 135°, it's likely opposite direction
    return diff > 135;
  }

  /// 🔄 Reset direction data
  static void reset() {
    _recentHeadings.clear();
    _recentPositions.clear();
    _primaryDirection = null;
  }

  /// 📊 Get direction info for debugging
  static Map<String, dynamic> getDirectionInfo() {
    return {
      'primary_direction': _primaryDirection,
      'recent_headings_count': _recentHeadings.length,
      'recent_positions_count': _recentPositions.length,
      'avg_heading': _recentHeadings.isEmpty ? null : _recentHeadings.reduce((a, b) => a + b) / _recentHeadings.length,
    };
  }
}

/// 🔄 Enhanced Roundabout Detection
class RoundaboutDetector {
  static final List<double> _recentGyroMagnitudes = [];
  static const int _gyroWindowSize = 5;
  static bool _isInRoundabout = false;
  static DateTime? roundaboutStartTime;

  /// 🔍 Detect roundabout based on gyroscope patterns
  static bool detectRoundabout(GyroscopeEvent gyro, double speedKmh) {
    if (speedKmh < 10) return false; // Need minimum speed for roundabout

    double magnitude = sqrt(gyro.x * gyro.x + gyro.y * gyro.y + gyro.z * gyro.z);
    _recentGyroMagnitudes.add(magnitude);

    if (_recentGyroMagnitudes.length > _gyroWindowSize) {
      _recentGyroMagnitudes.removeAt(0);
    }

    // Check for sustained high gyro values (typical in roundabouts)
    if (_recentGyroMagnitudes.length == _gyroWindowSize) {
      double avgMagnitude = _recentGyroMagnitudes.reduce((a, b) => a + b) / _gyroWindowSize;

      if (avgMagnitude > DynamicConfig.roundaboutGyroThreshold) {
        if (!_isInRoundabout) {
          _isInRoundabout = true;
          roundaboutStartTime = DateTime.now();
          return true; // Roundabout entry detected
        }
      } else {
        _isInRoundabout = false;
        roundaboutStartTime = null;
      }
    }

    return false;
  }

  static void reset() {
    _recentGyroMagnitudes.clear();
    _isInRoundabout = false;
    roundaboutStartTime = null;
  }
}

/// 🚗 Enhanced Stop Manager
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

/// 📊 Enhanced Trip Statistics
class TripStatistics {
  static int totalUpdates = 0;
  static int rejectedUpdates = 0;
  static Map<String, int> updatesByReason = {};
  static Map<String, int> rejectionReasons = {};
  static int totalStops = 0;

  static void recordUpdate(String reason) {
    totalUpdates++;
    updatesByReason[reason] = (updatesByReason[reason] ?? 0) + 1;
    if (reason.contains('توقف تام')) totalStops++;
  }

  static void recordRejection(String reason) {
    rejectedUpdates++;
    rejectionReasons[reason] = (rejectionReasons[reason] ?? 0) + 1;
  }

  static void logStatistics() {
    logger.i('''
📊 ========== إحصائيات الرحلة ==========
📍 إجمالي التحديثات: $totalUpdates
❌ التحديثات المرفوضة: $rejectedUpdates
🛑 عدد التوقفات: $totalStops

📈 التحديثات حسب السبب:
   🚀 بداية حركة: ${updatesByReason['بداية حركة بعد توقف'] ?? 0}
   🌀 دوار: ${updatesByReason['دخول دوار'] ?? 0}
   🧭 دوران بوصلة: ${updatesByReason['دوران >= 30° (بوصلة)'] ?? 0}
   📡 دوران جيروسكوب: ${updatesByReason['دوران قوي (جيروسكوب)'] ?? 0}
   ⚡ تغيير سرعة: ${updatesByReason['تغيير سرعة مفاجئ'] ?? 0}
   ⏱️ تحديث دوري: ${updatesByReason['تحديث دوري في الرحلة'] ?? 0}
   🛑 توقف تام: ${updatesByReason['توقف تام 🛑'] ?? 0}

❌ أسباب الرفض:
   📍 دقة منخفضة: ${rejectionReasons['دقة منخفضة'] ?? 0}
   🚫 اتجاه معاكس: ${rejectionReasons['اتجاه معاكس'] ?? 0}
   ⏰ بيانات قديمة: ${rejectionReasons['بيانات قديمة'] ?? 0}
   
📊 ===================================
''');
  }
}

/// 🎯 Enhanced Background Service Entry Point
@pragma('vm:entry-point')
Future<bool> backgroundEntryPoint(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();

  // 📊 Enhanced variables
  double? lastHeading;
  DateTime lastLocationSendTime = DateTime.now().subtract(Duration(seconds: 60));
  Position? lastPosition;
  final movingAvgLat = _MovingAverage(3);
  final movingAvgLng = _MovingAverage(3);

  // 📡 Enhanced subscriptions
  StreamSubscription<CompassEvent>? compassSub;
  StreamSubscription<GyroscopeEvent>? gyroSub;
  StreamSubscription<Position>? positionStreamSub;
  final List<StreamSubscription> subscriptions = [];

  /// 🧹 Enhanced subscription management
  void addSubscription(StreamSubscription sub) => subscriptions.add(sub);

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

  /// ✅ Enhanced location validation
  bool _validateLocation(Position pos, {required String context}) {
    // 1. Check accuracy
    if (pos.accuracy > DynamicConfig.accuracyThreshold) {
      TripStatistics.recordRejection('دقة منخفضة');
      logger.i('❌ [$context] دقة الموقع منخفضة: ${pos.accuracy.toStringAsFixed(1)} م');
      return false;
    }

    // 2. Check timestamp (not older than 30 seconds)
    if (pos.timestamp != null) {
      final age = DateTime.now().difference(pos.timestamp);
      if (age > Duration(seconds: 30)) {
        TripStatistics.recordRejection('بيانات قديمة');
        logger.i('❌ [$context] بيانات موقع قديمة: ${age.inSeconds} ثانية');
        return false;
      }
    }

    // 3. Check if position is valid
    if (pos.latitude == 0.0 || pos.longitude == 0.0) {
      TripStatistics.recordRejection('إحداثيات غير صالحة');
      logger.i('❌ [$context] إحداثيات غير صالحة');
      return false;
    }

    return true;
  }

  /// 📍 Enhanced smart location sending with double validation
  Future<void> safePrintCurrentLocation(String reason) async {
    try {
      // 🔍 Check location service and permissions
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

      // 📍 Get current position
      Position pos = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(distanceFilter: 0, accuracy: LocationAccuracy.bestForNavigation),
        desiredAccuracy: LocationAccuracy.bestForNavigation,
      );

      double speedKmh = pos.speed * 3.6;
      lastPosition = pos;

      // 🎯 Enhanced validation
      if (!_validateLocation(pos, context: reason)) {
        return;
      }

      // 🚫 Check for opposite direction
      if (lastHeading != null && DynamicConfig.isInTrip) {
        if (DirectionManager.isOppositeDirection(lastHeading!, speedKmh)) {
          TripStatistics.recordRejection('اتجاه معاكس');
          logger.i('🚫 [$reason] تم رفض الإرسال - اتجاه معاكس للحركة');
          return;
        }
      }

      // Update direction manager
      DirectionManager.updateData(pos, lastHeading);

      // 📤 Send data
      service.invoke('updateLocation', {
        'latitude': pos.latitude,
        'longitude': pos.longitude,
        'accuracy': pos.accuracy,
        'speed': pos.speed,
        'heading': lastHeading,
        'in_trip': DynamicConfig.isInTrip,
        'reason': reason,
        'timestamp': DateTime.now().millisecondsSinceEpoch,
        'is_stop_location': false,
      });

      lastLocationSendTime = DateTime.now();
      TripStatistics.recordUpdate(reason);

      logger.i(
        "📍 [${DynamicConfig.isInTrip ? 'TRIP' : 'NORMAL'}] → $reason - "
        "سرعة: ${speedKmh.toStringAsFixed(1)} كم/س - "
        "دقة: ${pos.accuracy.toStringAsFixed(1)} م - "
        "اتجاه: ${lastHeading?.toStringAsFixed(1) ?? 'N/A'}°",
      );
    } catch (e, st) {
      logger.i('❌ خطأ في safePrintCurrentLocation: $e , $st');
    }
  }

  /// 🔄 Enhanced sensor subscriptions
  Future<void> updateSensorSubscriptions() async {
    await cleanupSubscriptions();

    if (DynamicConfig.useSensors) {
      try {
        // 🧭 Enhanced compass with better heading detection
        compassSub = FlutterCompass.events!.listen((event) {
          final heading = event.heading;
          if (heading == null) return;

          if (lastHeading != null) {
            double diff = (heading - lastHeading!).abs();
            if (diff > 180) diff = 360 - diff;

            // Enhanced heading change detection
            if (diff >= DynamicConfig.headingChangeThreshold && (lastPosition?.speed ?? 0) * 3.6 > DynamicConfig.minSpeedForDirectionCheck) {
              safePrintCurrentLocation('دوران >= ${DynamicConfig.headingChangeThreshold}° (بوصلة)');
            }
          }
          lastHeading = heading;
        });
        addSubscription(compassSub!);
        logger.i('🧭 تم تفعيل البوصلة المحسنة');
      } catch (e) {
        logger.i('❌ فشل تفعيل البوصلة: $e');
      }

      try {
        // 🔄 Enhanced gyroscope with roundabout detection
        gyroSub = gyroscopeEvents.listen((gyro) {
          final speedKmh = (lastPosition?.speed ?? 0) * 3.6;

          // 1. Check for strong rotation
          final magnitude = sqrt(gyro.x * gyro.x + gyro.y * gyro.y + gyro.z * gyro.z);
          if (magnitude > 1.2 && speedKmh > DynamicConfig.minSpeedForDirectionCheck) {
            safePrintCurrentLocation('دوران قوي (جيروسكوب)');
          }

          // 2. Check for roundabout
          if (RoundaboutDetector.detectRoundabout(gyro, speedKmh)) {
            safePrintCurrentLocation('دخول دوار');
          }
        });
        addSubscription(gyroSub!);
        logger.i('📡 تم تفعيل الجيروسكوب المحسن');
      } catch (e) {
        logger.i('❌ فشل تفعيل الجيروسكوب: $e');
      }
    }
  }

  /// 🛰️ Enhanced position stream
  void startPositionStream() {
    try {
      positionStreamSub = Geolocator.getPositionStream(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.bestForNavigation, distanceFilter: 0),
      ).listen((Position pos) {
        lastPosition = pos;
        double speedKmh = pos.speed * 3.6;

        // Reset stop state if moving
        if (speedKmh > 3.0) {
          StopManager.resetStopState();
        }

        // Enhanced validation
        if (!_validateLocation(pos, context: 'Stream')) return;

        final ts = pos.timestamp;
        if (ts != null && ts.isBefore(DateTime.now().subtract(Duration(seconds: 30)))) return;

        movingAvgLat.add(pos.latitude);
        movingAvgLng.add(pos.longitude);

        // Enhanced speed change detection
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

  // 🎛️ Enhanced command handling
  service.on('setTripMode').listen((event) {
    final bool inTrip = event?['inTrip'] ?? false;
    DynamicConfig.setTripMode(inTrip);
    StopManager.resetStopState();
    DirectionManager.reset();
    RoundaboutDetector.reset();

    logger.i('🔄 تغيير الوضع إلى: ${inTrip ? "رحلة 🚗" : "عادي 🏠"}');
    updateSensorSubscriptions();
  });

  service.on('getStatistics').listen((event) => TripStatistics.logStatistics());

  service.on('getDirectionInfo').listen((event) {
    logger.i('🧭 معلومات الاتجاه: ${DirectionManager.getDirectionInfo()}');
  });

  service.on('setAsForeground').listen((event) {
    if (service is AndroidServiceInstance) {
      (service as AndroidServiceInstance).setAsForegroundService();
    }
  });

  service.on('stopService').listen((event) async {
    await cleanupSubscriptions();
    TripStatistics.logStatistics();
    DirectionManager.reset();
    RoundaboutDetector.reset();
    await service.stopSelf();
  });

  // 🚀 Start enhanced service
  startPositionStream();
  updateSensorSubscriptions();
  logger.i('🎉 تم بدء خدمة الخلفية المحسنة - وضع الرحلة');

  // ⏰ Enhanced periodic timer
  Timer.periodic(Duration(seconds: 5), (timer) async {
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
          await safePrintCurrentLocation('توقف تام 🛑');
        }
      }

      // Log statistics every 5 minutes
      if (now.minute % 5 == 0 && now.second < 10) {
        TripStatistics.logStatistics();
        logger.i('🧭 معلومات الاتجاه: ${DirectionManager.getDirectionInfo()}');
      }
    } catch (e) {
      logger.i('❌ خطأ في المؤقت الدوري: $e');
    }
  });

  return true;
}

/// 📈 Moving Average Helper (keep existing)
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
