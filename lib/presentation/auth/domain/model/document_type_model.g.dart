// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentTypeModel _$DocumentTypeModelFromJson(Map<String, dynamic> json) =>
    _DocumentTypeModel(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DocumentTypeModelToJson(_DocumentTypeModel instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_Datum _$DatumFromJson(Map<String, dynamic> json) => _Datum(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  isRequired: json['is_required'] as bool?,
  path: json['path'] as String?,
);

Map<String, dynamic> _$DatumToJson(_Datum instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'is_required': instance.isRequired,
  'path': instance.path,
};
