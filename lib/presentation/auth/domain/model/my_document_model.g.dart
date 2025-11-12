// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyDocumentModelImpl _$$MyDocumentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyDocumentModelImpl(
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      payload: (json['payload'] as List<dynamic>?)
          ?.map((e) => MyDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$$MyDocumentModelImplToJson(
        _$MyDocumentModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_$MyDocumentImpl _$$MyDocumentImplFromJson(Map<String, dynamic> json) =>
    _$MyDocumentImpl(
      id: (json['id'] as num?)?.toInt(),
      documentTypeId: (json['document_type_id'] as num?)?.toInt(),
      documentType: json['document_type'] as String?,
      filePath: json['file_path'] as String?,
      statusEdit: json['status_edit'] as String?,
      status: (json['status'] as num?)?.toInt(),
      isRequired: json['is_required'] as bool?,
    );

Map<String, dynamic> _$$MyDocumentImplToJson(_$MyDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'document_type_id': instance.documentTypeId,
      'document_type': instance.documentType,
      'file_path': instance.filePath,
      'status_edit': instance.statusEdit,
      'status': instance.status,
      'is_required': instance.isRequired,
    };
