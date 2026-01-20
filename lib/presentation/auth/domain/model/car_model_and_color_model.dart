import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_model_and_color_model.freezed.dart';
part 'car_model_and_color_model.g.dart';

@freezed
abstract class CarModelAndColorModel with _$CarModelAndColorModel {
  const factory CarModelAndColorModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'payload') Payload? payload,
    @JsonKey(name: 'isSuccess') bool? isSuccess,
  }) = _CarModelAndColorModel;

  factory CarModelAndColorModel.fromJson(Map<String, dynamic> json) => _$CarModelAndColorModelFromJson(json);
}

@freezed
abstract class Payload with _$Payload {
  const factory Payload({@JsonKey(name: 'types') List<ColorModel>? types, @JsonKey(name: 'colors') List<ColorModel>? colors}) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}

@freezed
abstract class ColorModel with _$ColorModel {
  const factory ColorModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'value') String? value,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'models') List<ColorModel>? models,
  }) = _ColorModel;

  factory ColorModel.fromJson(Map<String, dynamic> json) => _$ColorModelFromJson(json);
}
