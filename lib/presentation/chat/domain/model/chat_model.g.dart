// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => _ChatModel(
  status: json['status'] as String?,
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  payload: json['payload'] == null
      ? null
      : Payload.fromJson(json['payload'] as Map<String, dynamic>),
  isSuccess: json['isSuccess'] as bool?,
);

Map<String, dynamic> _$ChatModelToJson(_ChatModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_Payload _$PayloadFromJson(Map<String, dynamic> json) => _Payload(
  channel: json['channel'] == null
      ? null
      : Channel.fromJson(json['channel'] as Map<String, dynamic>),
  messages: (json['messages'] as List<dynamic>?)
      ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PayloadToJson(_Payload instance) => <String, dynamic>{
  'channel': instance.channel,
  'messages': instance.messages,
};

_Channel _$ChannelFromJson(Map<String, dynamic> json) => _Channel(
  id: (json['id'] as num?)?.toInt(),
  receiver: json['receiver'] == null
      ? null
      : Receiver.fromJson(json['receiver'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChannelToJson(_Channel instance) => <String, dynamic>{
  'id': instance.id,
  'receiver': instance.receiver,
};

_Receiver _$ReceiverFromJson(Map<String, dynamic> json) => _Receiver(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$ReceiverToJson(_Receiver instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
};

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  id: (json['id'] as num?)?.toInt(),
  message: json['message'] as String?,
  type: json['type'] as String?,
  media: json['media'] as List<dynamic>?,
  time: json['time'] as String?,
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'id': instance.id,
  'message': instance.message,
  'type': instance.type,
  'media': instance.media,
  'time': instance.time,
  'date': instance.date?.toIso8601String(),
};
