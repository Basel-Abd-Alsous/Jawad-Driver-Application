import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_status_model.freezed.dart';
part 'register_status_model.g.dart';

@freezed
abstract class RegisterStatusModel with _$RegisterStatusModel {
  const factory RegisterStatusModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'payload') Payload? payload,
    @JsonKey(name: 'isSuccess') bool? isSuccess,
  }) = _RegisterStatusModel;

  factory RegisterStatusModel.fromJson(Map<String, dynamic> json) => _$RegisterStatusModelFromJson(json);
}

@freezed
abstract class Payload with _$Payload {
  const factory Payload({
    @JsonKey(name: 'current_step') String? currentStep,
    @JsonKey(name: 'documents_status') DocumentsStatus? documentsStatus,
    @JsonKey(name: 'car_info_completed') bool? carInfoCompleted,
    @JsonKey(name: 'bank_info_completed') bool? bankInfoCompleted,
    @JsonKey(name: 'missing_documents') List<MissingDocument>? missingDocuments,
    @JsonKey(name: 'next_required_action') String? nextRequiredAction,
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}

@freezed
abstract class DocumentsStatus with _$DocumentsStatus {
  const factory DocumentsStatus({
    @JsonKey(name: 'total_required') int? totalRequired,
    @JsonKey(name: 'uploaded') int? uploaded,
    @JsonKey(name: 'approved') int? approved,
    @JsonKey(name: 'pending') int? pending,
    @JsonKey(name: 'rejected') int? rejected,
  }) = _DocumentsStatus;

  factory DocumentsStatus.fromJson(Map<String, dynamic> json) => _$DocumentsStatusFromJson(json);
}

@freezed
abstract class MissingDocument with _$MissingDocument {
  const factory MissingDocument({@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name}) = _MissingDocument;

  factory MissingDocument.fromJson(Map<String, dynamic> json) => _$MissingDocumentFromJson(json);
}
