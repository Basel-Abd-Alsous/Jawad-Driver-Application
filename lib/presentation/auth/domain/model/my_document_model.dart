import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_document_model.freezed.dart';
part 'my_document_model.g.dart';

@freezed
abstract class MyDocumentModel with _$MyDocumentModel {
  const factory MyDocumentModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'payload') PayloadDocument? payload,
    @JsonKey(name: 'isSuccess') bool? isSuccess,
  }) = _MyDocumentModel;

  factory MyDocumentModel.fromJson(Map<String, dynamic> json) => _$MyDocumentModelFromJson(json);
}

@freezed
abstract class PayloadDocument with _$PayloadDocument {
  const factory PayloadDocument({@JsonKey(name: 'document_types') List<DocumentTypes>? documentTypes, @JsonKey(name: 'my-documents') List<MyDocument>? myDocuments}) = _PayloadDocument;

  factory PayloadDocument.fromJson(Map<String, dynamic> json) => _$PayloadDocumentFromJson(json);
}

@freezed
abstract class MyDocument with _$MyDocument {
  const factory MyDocument({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'document_type_id') int? documentTypeId,
    @JsonKey(name: 'document_type') String? documentType,
    @JsonKey(name: 'file_path') String? filePath,
    @JsonKey(name: 'status_edit') String? statusEdit,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'is_required') bool? isRequired,
  }) = _MyDocument;

  factory MyDocument.fromJson(Map<String, dynamic> json) => _$MyDocumentFromJson(json);
}

@freezed
abstract class DocumentTypes with _$DocumentTypes {
  const factory DocumentTypes({@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name, @JsonKey(name: 'is_required') bool? isRequired, String? path}) = _DocumentTypes;

  factory DocumentTypes.fromJson(Map<String, dynamic> json) => _$DocumentTypesFromJson(json);
}
