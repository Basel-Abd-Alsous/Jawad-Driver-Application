import 'dart:io';

class UploadDocumentModel {
  final File? document;
  final int? documentTypeId;

  UploadDocumentModel({this.document, this.documentTypeId});

  UploadDocumentModel.fromJson(Map<String, dynamic> json) : document = json['document'] as File?, documentTypeId = json['document_type_id'] as int?;

  Map<String, dynamic> toJson() => {'document': document, 'document_type_id': documentTypeId};
}
