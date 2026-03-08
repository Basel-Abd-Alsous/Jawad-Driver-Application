import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive_ce.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
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
abstract class Payload with _$Payload {
  const factory Payload({@JsonKey(name: 'driver') Driver? driver}) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}

@freezed
@HiveType(typeId: 0)
abstract class Driver with _$Driver {
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
    @HiveField(15) @JsonKey(name: "legal_status") String? legalStatus,
    @HiveField(16) @JsonKey(name: "car_info") CarInfo? carInfo,
    @HiveField(17) @JsonKey(name: "bank_info") BankInfo? bankInfo,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}

@freezed
@HiveType(typeId: 1)
abstract class BankInfo with _$BankInfo {
  const factory BankInfo({
  @HiveField(1)  @JsonKey(name: "id") int? id,
  @HiveField(2)  @JsonKey(name: "bank_name") String? bankName,
  @HiveField(3)  @JsonKey(name: "account_name") dynamic accountName,
  @HiveField(4)  @JsonKey(name: "account_number") dynamic accountNumber,
  }) = _BankInfo;

  factory BankInfo.fromJson(Map<String, dynamic> json) => _$BankInfoFromJson(json);
}

@freezed
@HiveType(typeId: 2)
abstract class CarInfo with _$CarInfo {
  const factory CarInfo({
    @HiveField(1)  @JsonKey(name: "id") int? id,
    @HiveField(2)  @JsonKey(name: "car_model") String? carModel,
    @HiveField(3)  @JsonKey(name: "car_color") String? carColor,
    @HiveField(4)  @JsonKey(name: "car_plate_number") String? carPlateNumber,
    @HiveField(5)  @JsonKey(name: "car_year") int? carYear,
    @HiveField(6)  @JsonKey(name: "license_expiry_date") DateTime? licenseExpiryDate,
    @HiveField(7)  @JsonKey(name: "sequence_number") String? sequenceNumber,
    @HiveField(8)  @JsonKey(name: "plate_type") int? plateType,
    @HiveField(9)  @JsonKey(name: "legal_status") String? legalStatus,
  }) = _CarInfo;

  factory CarInfo.fromJson(Map<String, dynamic> json) => _$CarInfoFromJson(json);
}
