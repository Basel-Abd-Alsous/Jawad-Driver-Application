// To parse this JSON data, do
//
//     final drawalModel = drawalModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'drawal_model.freezed.dart';
part 'drawal_model.g.dart';

DrawalModel drawalModelFromJson(String str) => DrawalModel.fromJson(json.decode(str));

String drawalModelToJson(DrawalModel data) => json.encode(data.toJson());

@freezed
abstract class DrawalModel with _$DrawalModel {
  const factory DrawalModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "payload") List<DrawalItem>? payload,
    @JsonKey(name: "isSuccess") bool? isSuccess,
  }) = _DrawalModel;

  factory DrawalModel.fromJson(Map<String, dynamic> json) => _$DrawalModelFromJson(json);
}

@freezed
abstract class DrawalItem with _$DrawalItem {
  const factory DrawalItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "method") String? method,
    @JsonKey(name: "bank_details") BankDetails? bankDetails,
    @JsonKey(name: "phone") dynamic phone,
    @JsonKey(name: "status") Status? status,
    @JsonKey(name: "amount") int? amount,
    @JsonKey(name: "note") dynamic note,
    @JsonKey(name: "created_at") String? createdAt,
  }) = _DrawalItem;

  factory DrawalItem.fromJson(Map<String, dynamic> json) => _$DrawalItemFromJson(json);
}

@freezed
abstract class BankDetails with _$BankDetails {
  const factory BankDetails({
    @JsonKey(name: "494") String? the494,
    @JsonKey(name: "4546") String? the4546,
    @JsonKey(name: "") String? empty,
    @JsonKey(name: "N,MNUGUYHJVVBVNBVNBVBNVBNVBNVBNV") String? nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv,
    @JsonKey(name: "55555555555") String? the55555555555,
    @JsonKey(name: "34481919181181919") String? the34481919181181919,
    @JsonKey(name: "000000") String? the000000,
    @JsonKey(name: "000000000000000") String? the000000000000000,
  }) = _BankDetails;

  factory BankDetails.fromJson(Map<String, dynamic> json) => _$BankDetailsFromJson(json);
}

@freezed
abstract class Status with _$Status {
  const factory Status({@JsonKey(name: "status") String? status, @JsonKey(name: "label") String? label, @JsonKey(name: "mobile_color") String? mobileColor}) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
