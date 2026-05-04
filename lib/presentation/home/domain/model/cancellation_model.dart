import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'cancellation_model.freezed.dart';
part 'cancellation_model.g.dart';

CancellationModel cancellationModelFromJson(String str) => CancellationModel.fromJson(json.decode(str));

String cancellationModelToJson(CancellationModel data) => json.encode(data.toJson());

@freezed
abstract class CancellationModel with _$CancellationModel {
  const factory CancellationModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "payload") List<CancellationItem>? payload,
    @JsonKey(name: "isSuccess") bool? isSuccess,
  }) = _CancellationModel;

  factory CancellationModel.fromJson(Map<String, dynamic> json) => _$CancellationModelFromJson(json);
}

@freezed
abstract class CancellationItem with _$CancellationItem {
  const factory CancellationItem({@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name, @JsonKey(name: "app_type") String? appType, @JsonKey(name: "type") String? type}) = _CancellationItem;

  factory CancellationItem.fromJson(Map<String, dynamic> json) => _$CancellationItemFromJson(json);
}
