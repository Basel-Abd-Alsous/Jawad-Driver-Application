// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model_and_color_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarModelAndColorModel _$CarModelAndColorModelFromJson(
  Map<String, dynamic> json,
) => _CarModelAndColorModel(
  status: json['status'] as String?,
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  payload: json['payload'] == null
      ? null
      : Payload.fromJson(json['payload'] as Map<String, dynamic>),
  isSuccess: json['isSuccess'] as bool?,
);

Map<String, dynamic> _$CarModelAndColorModelToJson(
  _CarModelAndColorModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'code': instance.code,
  'message': instance.message,
  'payload': instance.payload,
  'isSuccess': instance.isSuccess,
};

_Payload _$PayloadFromJson(Map<String, dynamic> json) => _Payload(
  types: (json['types'] as List<dynamic>?)
      ?.map((e) => ColorModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  colors: (json['colors'] as List<dynamic>?)
      ?.map((e) => ColorModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PayloadToJson(_Payload instance) => <String, dynamic>{
  'types': instance.types,
  'colors': instance.colors,
};

_ColorModel _$ColorModelFromJson(Map<String, dynamic> json) => _ColorModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  value: json['value'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  models: (json['models'] as List<dynamic>?)
      ?.map((e) => ColorModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ColorModelToJson(_ColorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'models': instance.models,
    };
