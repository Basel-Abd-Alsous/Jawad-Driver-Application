import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationHelper {
  /// طلب صلاحيات الموقع (مع التوجيه للإعدادات إن لزم)

  /// الحصول على الموقع الحالي لمرة واحدة
  // Future<LatLng?> getCurrentLocation() async {
  //   try {
  //     final bg.Location location = await bg.BackgroundGeolocation.getCurrentPosition(
  //       persist: false,
  //       samples: 3,
  //       desiredAccuracy: bg.Config.DESIRED_ACCURACY_HIGH,
  //     );
  //     log('📍 الموقع الحالي: ${location.coords.latitude}, ${location.coords.longitude}');
  //     return LatLng(location.coords.latitude, location.coords.longitude);
  //   } catch (e) {
  //     log('❌ خطأ في الحصول على الموقع: $e');
  //     return null;
  //   }
  // }

  Future<LatLng?> getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception("Location services are disabled");
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception("Location permissions are denied");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      throw Exception("Location permissions are permanently denied");
    }
    final value = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return LatLng(value.latitude, value.longitude);
  }
}
