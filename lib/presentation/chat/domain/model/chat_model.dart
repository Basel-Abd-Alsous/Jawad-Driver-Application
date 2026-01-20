import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
abstract class ChatModel with _$ChatModel {
  const factory ChatModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "payload") Payload? payload,
    @JsonKey(name: "isSuccess") bool? isSuccess,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) => _$ChatModelFromJson(json);
}

@freezed
abstract class Payload with _$Payload {
  const factory Payload({@JsonKey(name: "channel") Channel? channel, @JsonKey(name: "messages") List<Message>? messages}) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}

@freezed
abstract class Channel with _$Channel {
  const factory Channel({@JsonKey(name: "id") int? id, @JsonKey(name: "receiver") Receiver? receiver}) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);
}

@freezed
abstract class Receiver with _$Receiver {
  const factory Receiver({@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name, @JsonKey(name: "image") String? image}) = _Receiver;

  factory Receiver.fromJson(Map<String, dynamic> json) => _$ReceiverFromJson(json);
}

@freezed
abstract class Message with _$Message {
  const factory Message({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "media") List<dynamic>? media,
    @JsonKey(name: "time") String? time,
    @JsonKey(name: "date") DateTime? date,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}
