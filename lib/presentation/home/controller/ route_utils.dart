// lib/core/utils/route_utils.dart
import 'dart:math';

class RouteUtils {
  // حساب المسافة بين نقطتين
  static double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const double earthRadius = 6371000; // meters
    final double dLat = _toRadians(lat2 - lat1);
    final double dLon = _toRadians(lon2 - lon1);

    final double a = sin(dLat / 2) * sin(dLat / 2) + cos(_toRadians(lat1)) * cos(_toRadians(lat2)) * sin(dLon / 2) * sin(dLon / 2);

    final double c = 2 * atan2(sqrt(a), sqrt(1 - a));
    return earthRadius * c;
  }

  static double _toRadians(double degrees) {
    return degrees * pi / 180;
  }

  // فلترة النقاط الشاذة
  static bool isValidPointForRoute(Map<String, dynamic> prevPoint, Map<String, dynamic> currentPoint) {
    final double prevLat = prevPoint['latitude'];
    final double prevLng = prevPoint['longitude'];
    final double currLat = currentPoint['latitude'];
    final double currLng = currentPoint['longitude'];

    final double distance = calculateDistance(prevLat, prevLng, currLat, currLng);
    final double? speed = currentPoint['speed'];

    // تجاهل النقاط أثناء التوقف
    if (speed != null && speed * 3.6 < 5.0 && distance < 10) {
      return false;
    }

    // تجاهل النقاط ذات الدقة المنخفضة
    final double? accuracy = currentPoint['accuracy'];
    if (accuracy != null && (currentPoint['in_trip'] == true ? (accuracy > 5.0) : (accuracy > 10.0))) {
      return false;
    }

    return true;
  }

  // تجميع النقاط المتقاربة
  static List<Map<String, dynamic>> clusterClosePoints(List<Map<String, dynamic>> points) {
    if (points.length < 2) return points;

    final List<Map<String, dynamic>> clustered = [points.first];

    for (int i = 1; i < points.length; i++) {
      final lastPoint = clustered.last;
      final currentPoint = points[i];

      final double distance = calculateDistance(lastPoint['latitude'], lastPoint['longitude'], currentPoint['latitude'], currentPoint['longitude']);

      // إذا كانت النقاط متباعدة كفاية (> 15 متر)، أضفها
      if (distance >= 15.0) {
        clustered.add(currentPoint);
      }
    }

    return clustered;
  }
}
