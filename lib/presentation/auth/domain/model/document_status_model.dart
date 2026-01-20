import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_status_model.freezed.dart';
part 'document_status_model.g.dart';

@freezed
abstract class DocumentStatusModel with _$DocumentStatusModel {
  const factory DocumentStatusModel({@JsonKey(name: 'status') String? status, @JsonKey(name: 'data') Data? data}) = _DocumentStatusModel;

  factory DocumentStatusModel.fromJson(Map<String, dynamic> json) => _$DocumentStatusModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'total_required') int? totalRequired,
    @JsonKey(name: 'uploaded') int? uploaded,
    @JsonKey(name: 'approved') int? approved,
    @JsonKey(name: 'pending') int? pending,
    @JsonKey(name: 'rejected') int? rejected,
    @JsonKey(name: 'missing') List<dynamic>? missing,
    @JsonKey(name: 'completion_percentage') int? completionPercentage,
    @JsonKey(name: 'all_approved') bool? allApproved,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
