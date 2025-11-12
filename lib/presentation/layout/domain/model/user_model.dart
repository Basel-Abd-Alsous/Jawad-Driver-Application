import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'payload') Payload? payload,
    @JsonKey(name: 'isSuccess') bool? isSuccess,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class Payload with _$Payload {
  const factory Payload({@JsonKey(name: 'driver') Driver? driver}) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}

@freezed
@HiveType(typeId: 0)
class Driver with _$Driver {
  const factory Driver({
    @HiveField(1) @JsonKey(name: 'id') int? id,
    @HiveField(2) @JsonKey(name: 'first_name') String? firstName,
    @HiveField(3) @JsonKey(name: 'last_name') dynamic lastName,
    @HiveField(4) @JsonKey(name: 'email') dynamic email,
    @HiveField(5) @JsonKey(name: 'phone') String? phone,
    @HiveField(6) @JsonKey(name: 'address') dynamic address,
    @HiveField(7) @JsonKey(name: 'gender') dynamic gender,
    @HiveField(8) @JsonKey(name: 'registration_status') String? registrationStatus,
    @HiveField(9) @JsonKey(name: 'status') String? status,
    @HiveField(10) @JsonKey(name: 'work_status') bool? workStatus,
    @HiveField(11) @JsonKey(name: 'profile_image') String? profileImage,
    @HiveField(12) @JsonKey(name: 'created_at') DateTime? createdAt,
    @HiveField(13) @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @HiveField(14) @JsonKey(name: 'rating') dynamic rating,
 }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}
