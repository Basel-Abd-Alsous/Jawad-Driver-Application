// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancellation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CancellationModel _$CancellationModelFromJson(Map<String, dynamic> json) =>
    _CancellationModel(
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      payload: (json['payload'] as List<dynamic>?)
          ?.map((e) => CancellationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$CancellationModelToJson(_CancellationModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_CancellationItem _$CancellationItemFromJson(Map<String, dynamic> json) =>
    _CancellationItem(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      appType: json['app_type'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$CancellationItemToJson(_CancellationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'app_type': instance.appType,
      'type': instance.type,
    };
