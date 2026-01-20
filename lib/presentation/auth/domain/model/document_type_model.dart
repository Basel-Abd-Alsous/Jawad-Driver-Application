import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_type_model.freezed.dart';
part 'document_type_model.g.dart';

@freezed
abstract class DocumentTypeModel with _$DocumentTypeModel {
  const factory DocumentTypeModel({@JsonKey(name: 'status') String? status, @JsonKey(name: 'data') List<Datum>? data}) = _DocumentTypeModel;

  factory DocumentTypeModel.fromJson(Map<String, dynamic> json) => _$DocumentTypeModelFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name, @JsonKey(name: 'is_required') bool? isRequired, String? path}) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
