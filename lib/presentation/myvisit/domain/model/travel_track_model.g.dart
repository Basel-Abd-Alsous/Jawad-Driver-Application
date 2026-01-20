// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_track_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TravelTrackModel _$TravelTrackModelFromJson(Map<String, dynamic> json) =>
    _TravelTrackModel(
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      payload: (json['payload'] as List<dynamic>?)
          ?.map((e) => Payload.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$TravelTrackModelToJson(_TravelTrackModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_Payload _$PayloadFromJson(Map<String, dynamic> json) => _Payload(
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$PayloadToJson(_Payload instance) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
