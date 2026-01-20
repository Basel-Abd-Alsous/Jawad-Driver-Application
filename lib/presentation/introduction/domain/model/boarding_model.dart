import 'package:freezed_annotation/freezed_annotation.dart';

part 'boarding_model.freezed.dart';
part 'boarding_model.g.dart';

@freezed
abstract class BoardingModel with _$BoardingModel {
  const factory BoardingModel({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "payload") required List<Boarding> boarding,
    @JsonKey(name: "isSuccess") required bool isSuccess,
  }) = _BoardingModel;

  factory BoardingModel.fromJson(Map<String, dynamic> json) => _$BoardingModelFromJson(json);
}

@freezed
abstract class Boarding with _$Boarding {
  const factory Boarding({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "app_type") required String appType,
    @JsonKey(name: "order") required int order,
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") required DateTime updatedAt,
  }) = _Boarding;

  factory Boarding.fromJson(Map<String, dynamic> json) => _$BoardingFromJson(json);
}
