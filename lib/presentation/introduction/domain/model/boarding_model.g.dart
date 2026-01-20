// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boarding_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BoardingModel _$BoardingModelFromJson(Map<String, dynamic> json) =>
    _BoardingModel(
      status: json['status'] as String,
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      boarding: (json['payload'] as List<dynamic>)
          .map((e) => Boarding.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSuccess: json['isSuccess'] as bool,
    );

Map<String, dynamic> _$BoardingModelToJson(_BoardingModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.boarding,
      'isSuccess': instance.isSuccess,
    };

_Boarding _$BoardingFromJson(Map<String, dynamic> json) => _Boarding(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  image: json['image'] as String,
  imageUrl: json['image_url'] as String,
  appType: json['app_type'] as String,
  order: (json['order'] as num).toInt(),
  status: json['status'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$BoardingToJson(_Boarding instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'image': instance.image,
  'image_url': instance.imageUrl,
  'app_type': instance.appType,
  'order': instance.order,
  'status': instance.status,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
