import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_document_model.freezed.dart';
part 'my_document_model.g.dart';

@freezed
class MyDocumentModel with _$MyDocumentModel {
  const factory MyDocumentModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'payload') List<MyDocument>? payload,
    @JsonKey(name: 'isSuccess') bool? isSuccess,
  }) = _MyDocumentModel;

  factory MyDocumentModel.fromJson(Map<String, dynamic> json) => _$MyDocumentModelFromJson(json);
}

@freezed
class MyDocument with _$MyDocument {
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
