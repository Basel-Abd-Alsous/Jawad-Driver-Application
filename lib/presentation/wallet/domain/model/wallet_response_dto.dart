import 'package:json_annotation/json_annotation.dart';

part 'wallet_response_dto.g.dart';

@JsonSerializable()
class WalletResponseDto {
  @JsonKey(name: 'event')
  final String event;

  @JsonKey(name: 'channel')
  final String channel;

  @JsonKey(name: 'data')
  final WalletDataWrapper data;

  WalletResponseDto({required this.event, required this.channel, required this.data});

  factory WalletResponseDto.fromJson(Map<String, dynamic> json) => _$WalletResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WalletResponseDtoToJson(this);
}

@JsonSerializable()
class WalletDataWrapper {
  @JsonKey(name: 'data')
  final WalletInnerData data;

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'type')
  final String type;

  WalletDataWrapper({required this.data, required this.id, required this.type});

  factory WalletDataWrapper.fromJson(Map<String, dynamic> json) => _$WalletDataWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$WalletDataWrapperToJson(this);
}

@JsonSerializable()
class WalletInnerData {
  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;

  @JsonKey(name: 'payload')
  final WalletPayload payload;

  WalletInnerData({required this.status, required this.code, required this.message, required this.isSuccess, required this.payload});

  factory WalletInnerData.fromJson(Map<String, dynamic> json) => _$WalletInnerDataFromJson(json);

  Map<String, dynamic> toJson() => _$WalletInnerDataToJson(this);
}

@JsonSerializable()
class WalletPayload {
  @JsonKey(name: 'timeDate')
  final String timeDate;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'data')
  final WalletDetails data;

  WalletPayload({required this.timeDate, required this.message, required this.title, required this.id, required this.image, required this.data});

  factory WalletPayload.fromJson(Map<String, dynamic> json) => _$WalletPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$WalletPayloadToJson(this);
}

@JsonSerializable()
class WalletDetails {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'balance')
  final String balance;

  @JsonKey(name: 'status')
  final WalletStatus status;

  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'notes')
  final String notes;

  @JsonKey(name: 'date')
  final String date;

  WalletDetails({required this.id, required this.balance, required this.status, required this.image, required this.notes, required this.date});

  factory WalletDetails.fromJson(Map<String, dynamic> json) => _$WalletDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$WalletDetailsToJson(this);
}

@JsonSerializable()
class WalletStatus {
  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'label')
  final String label;

  @JsonKey(name: 'color')
  final String color;

  WalletStatus({required this.status, required this.label, required this.color});

  factory WalletStatus.fromJson(Map<String, dynamic> json) => _$WalletStatusFromJson(json);

  Map<String, dynamic> toJson() => _$WalletStatusToJson(this);
}
