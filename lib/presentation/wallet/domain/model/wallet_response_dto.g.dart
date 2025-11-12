// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletResponseDto _$WalletResponseDtoFromJson(Map<String, dynamic> json) =>
    WalletResponseDto(
      event: json['event'] as String,
      channel: json['channel'] as String,
      data: WalletDataWrapper.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WalletResponseDtoToJson(WalletResponseDto instance) =>
    <String, dynamic>{
      'event': instance.event,
      'channel': instance.channel,
      'data': instance.data,
    };

WalletDataWrapper _$WalletDataWrapperFromJson(Map<String, dynamic> json) =>
    WalletDataWrapper(
      data: WalletInnerData.fromJson(json['data'] as Map<String, dynamic>),
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$WalletDataWrapperToJson(WalletDataWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
      'id': instance.id,
      'type': instance.type,
    };

WalletInnerData _$WalletInnerDataFromJson(Map<String, dynamic> json) =>
    WalletInnerData(
      status: json['status'] as String,
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      payload: WalletPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WalletInnerDataToJson(WalletInnerData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'payload': instance.payload,
    };

WalletPayload _$WalletPayloadFromJson(Map<String, dynamic> json) =>
    WalletPayload(
      timeDate: json['timeDate'] as String,
      message: json['message'] as String,
      title: json['title'] as String,
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      data: WalletDetails.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WalletPayloadToJson(WalletPayload instance) =>
    <String, dynamic>{
      'timeDate': instance.timeDate,
      'message': instance.message,
      'title': instance.title,
      'id': instance.id,
      'image': instance.image,
      'data': instance.data,
    };

WalletDetails _$WalletDetailsFromJson(Map<String, dynamic> json) =>
    WalletDetails(
      id: (json['id'] as num).toInt(),
      balance: json['balance'] as String,
      status: WalletStatus.fromJson(json['status'] as Map<String, dynamic>),
      image: json['image'] as String,
      notes: json['notes'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$WalletDetailsToJson(WalletDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
      'status': instance.status,
      'image': instance.image,
      'notes': instance.notes,
      'date': instance.date,
    };

WalletStatus _$WalletStatusFromJson(Map<String, dynamic> json) => WalletStatus(
      status: json['status'] as String,
      label: json['label'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$WalletStatusToJson(WalletStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'label': instance.label,
      'color': instance.color,
    };
