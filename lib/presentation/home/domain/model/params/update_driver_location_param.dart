class UpdateDriverLocationParam {
  final String? latitude;
  final String? longitude;
  final String? drivingStatus;

  UpdateDriverLocationParam({this.latitude, this.longitude, this.drivingStatus});

  UpdateDriverLocationParam.fromJson(Map<String, dynamic> json)
    : latitude = json['latitude'] as String?,
      longitude = json['longitude'] as String?,
      drivingStatus = json['driving_status'] as String?;

  Map<String, dynamic> toJson() => {'latitude': latitude, 'longitude': longitude, 'driving_status': drivingStatus};
}
