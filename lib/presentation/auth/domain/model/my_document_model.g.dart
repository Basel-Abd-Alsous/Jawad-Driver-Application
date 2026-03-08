// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyDocumentModel _$MyDocumentModelFromJson(Map<String, dynamic> json) =>
    _MyDocumentModel(
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      payload: json['payload'] == null
          ? null
          : PayloadDocument.fromJson(json['payload'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$MyDocumentModelToJson(_MyDocumentModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_PayloadDocument _$PayloadDocumentFromJson(Map<String, dynamic> json) =>
    _PayloadDocument(
      documentTypes: (json['document_types'] as List<dynamic>?)
          ?.map((e) => DocumentTypes.fromJson(e as Map<String, dynamic>))
          .toList(),
      myDocuments: (json['my-documents'] as List<dynamic>?)
          ?.map((e) => MyDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PayloadDocumentToJson(_PayloadDocument instance) =>
    <String, dynamic>{
      'document_types': instance.documentTypes,
      'my-documents': instance.myDocuments,
    };

_MyDocument _$MyDocumentFromJson(Map<String, dynamic> json) => _MyDocument(
  id: (json['id'] as num?)?.toInt(),
  documentTypeId: (json['document_type_id'] as num?)?.toInt(),
  documentType: json['document_type'] as String?,
  filePath: json['file_path'] as String?,
  statusEdit: json['status_edit'] as String?,
  status: (json['status'] as num?)?.toInt(),
  isRequired: json['is_required'] as bool?,
);

Map<String, dynamic> _$MyDocumentToJson(_MyDocument instance) =>
    <String, dynamic>{
      'id': instance.id,
      'document_type_id': instance.documentTypeId,
      'document_type': instance.documentType,
      'file_path': instance.filePath,
      'status_edit': instance.statusEdit,
      'status': instance.status,
      'is_required': instance.isRequired,
    };

_DocumentTypes _$DocumentTypesFromJson(Map<String, dynamic> json) =>
    _DocumentTypes(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      isRequired: json['is_required'] as bool?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$DocumentTypesToJson(_DocumentTypes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_required': instance.isRequired,
      'path': instance.path,
    };
