// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "payload")
  Payload? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "payload") Payload? payload,
      @JsonKey(name: "isSuccess") bool? isSuccess});

  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? payload = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $PayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
          _$ChatModelImpl value, $Res Function(_$ChatModelImpl) then) =
      __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "payload") Payload? payload,
      @JsonKey(name: "isSuccess") bool? isSuccess});

  @override
  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
      _$ChatModelImpl _value, $Res Function(_$ChatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? payload = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$ChatModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatModelImpl implements _ChatModel {
  const _$ChatModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "payload") this.payload,
      @JsonKey(name: "isSuccess") this.isSuccess});

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "payload")
  final Payload? payload;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;

  @override
  String toString() {
    return 'ChatModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, code, message, payload, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(
      this,
    );
  }
}

abstract class _ChatModel implements ChatModel {
  const factory _ChatModel(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "code") final int? code,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "payload") final Payload? payload,
      @JsonKey(name: "isSuccess") final bool? isSuccess}) = _$ChatModelImpl;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "code")
  int? get code;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "payload")
  Payload? get payload;
  @override
  @JsonKey(name: "isSuccess")
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
mixin _$Payload {
  @JsonKey(name: "channel")
  Channel? get channel => throw _privateConstructorUsedError;
  @JsonKey(name: "messages")
  List<Message>? get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res, Payload>;
  @useResult
  $Res call(
      {@JsonKey(name: "channel") Channel? channel,
      @JsonKey(name: "messages") List<Message>? messages});

  $ChannelCopyWith<$Res>? get channel;
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res, $Val extends Payload>
    implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelCopyWith<$Res>? get channel {
    if (_value.channel == null) {
      return null;
    }

    return $ChannelCopyWith<$Res>(_value.channel!, (value) {
      return _then(_value.copyWith(channel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayloadImplCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$$PayloadImplCopyWith(
          _$PayloadImpl value, $Res Function(_$PayloadImpl) then) =
      __$$PayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "channel") Channel? channel,
      @JsonKey(name: "messages") List<Message>? messages});

  @override
  $ChannelCopyWith<$Res>? get channel;
}

/// @nodoc
class __$$PayloadImplCopyWithImpl<$Res>
    extends _$PayloadCopyWithImpl<$Res, _$PayloadImpl>
    implements _$$PayloadImplCopyWith<$Res> {
  __$$PayloadImplCopyWithImpl(
      _$PayloadImpl _value, $Res Function(_$PayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$PayloadImpl(
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel?,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayloadImpl implements _Payload {
  const _$PayloadImpl(
      {@JsonKey(name: "channel") this.channel,
      @JsonKey(name: "messages") final List<Message>? messages})
      : _messages = messages;

  factory _$PayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayloadImplFromJson(json);

  @override
  @JsonKey(name: "channel")
  final Channel? channel;
  final List<Message>? _messages;
  @override
  @JsonKey(name: "messages")
  List<Message>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Payload(channel: $channel, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayloadImpl &&
            (identical(other.channel, channel) || other.channel == channel) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, channel, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayloadImplCopyWith<_$PayloadImpl> get copyWith =>
      __$$PayloadImplCopyWithImpl<_$PayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayloadImplToJson(
      this,
    );
  }
}

abstract class _Payload implements Payload {
  const factory _Payload(
          {@JsonKey(name: "channel") final Channel? channel,
          @JsonKey(name: "messages") final List<Message>? messages}) =
      _$PayloadImpl;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$PayloadImpl.fromJson;

  @override
  @JsonKey(name: "channel")
  Channel? get channel;
  @override
  @JsonKey(name: "messages")
  List<Message>? get messages;
  @override
  @JsonKey(ignore: true)
  _$$PayloadImplCopyWith<_$PayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
mixin _$Channel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "receiver")
  Receiver? get receiver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res, Channel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "receiver") Receiver? receiver});

  $ReceiverCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res, $Val extends Channel>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as Receiver?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReceiverCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $ReceiverCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChannelImplCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$ChannelImplCopyWith(
          _$ChannelImpl value, $Res Function(_$ChannelImpl) then) =
      __$$ChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "receiver") Receiver? receiver});

  @override
  $ReceiverCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$$ChannelImplCopyWithImpl<$Res>
    extends _$ChannelCopyWithImpl<$Res, _$ChannelImpl>
    implements _$$ChannelImplCopyWith<$Res> {
  __$$ChannelImplCopyWithImpl(
      _$ChannelImpl _value, $Res Function(_$ChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_$ChannelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as Receiver?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelImpl implements _Channel {
  const _$ChannelImpl(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "receiver") this.receiver});

  factory _$ChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "receiver")
  final Receiver? receiver;

  @override
  String toString() {
    return 'Channel(id: $id, receiver: $receiver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, receiver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      __$$ChannelImplCopyWithImpl<_$ChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelImplToJson(
      this,
    );
  }
}

abstract class _Channel implements Channel {
  const factory _Channel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "receiver") final Receiver? receiver}) = _$ChannelImpl;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$ChannelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "receiver")
  Receiver? get receiver;
  @override
  @JsonKey(ignore: true)
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Receiver _$ReceiverFromJson(Map<String, dynamic> json) {
  return _Receiver.fromJson(json);
}

/// @nodoc
mixin _$Receiver {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiverCopyWith<Receiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiverCopyWith<$Res> {
  factory $ReceiverCopyWith(Receiver value, $Res Function(Receiver) then) =
      _$ReceiverCopyWithImpl<$Res, Receiver>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class _$ReceiverCopyWithImpl<$Res, $Val extends Receiver>
    implements $ReceiverCopyWith<$Res> {
  _$ReceiverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiverImplCopyWith<$Res>
    implements $ReceiverCopyWith<$Res> {
  factory _$$ReceiverImplCopyWith(
          _$ReceiverImpl value, $Res Function(_$ReceiverImpl) then) =
      __$$ReceiverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class __$$ReceiverImplCopyWithImpl<$Res>
    extends _$ReceiverCopyWithImpl<$Res, _$ReceiverImpl>
    implements _$$ReceiverImplCopyWith<$Res> {
  __$$ReceiverImplCopyWithImpl(
      _$ReceiverImpl _value, $Res Function(_$ReceiverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ReceiverImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiverImpl implements _Receiver {
  const _$ReceiverImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image") this.image});

  factory _$ReceiverImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiverImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "image")
  final String? image;

  @override
  String toString() {
    return 'Receiver(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiverImplCopyWith<_$ReceiverImpl> get copyWith =>
      __$$ReceiverImplCopyWithImpl<_$ReceiverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiverImplToJson(
      this,
    );
  }
}

abstract class _Receiver implements Receiver {
  const factory _Receiver(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "image") final String? image}) = _$ReceiverImpl;

  factory _Receiver.fromJson(Map<String, dynamic> json) =
      _$ReceiverImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$ReceiverImplCopyWith<_$ReceiverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "media")
  List<dynamic>? get media => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "media") List<dynamic>? media,
      @JsonKey(name: "time") String? time,
      @JsonKey(name: "date") DateTime? date});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? type = freezed,
    Object? media = freezed,
    Object? time = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "media") List<dynamic>? media,
      @JsonKey(name: "time") String? time,
      @JsonKey(name: "date") DateTime? date});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? type = freezed,
    Object? media = freezed,
    Object? time = freezed,
    Object? date = freezed,
  }) {
    return _then(_$MessageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "media") final List<dynamic>? media,
      @JsonKey(name: "time") this.time,
      @JsonKey(name: "date") this.date})
      : _media = media;

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "type")
  final String? type;
  final List<dynamic>? _media;
  @override
  @JsonKey(name: "media")
  List<dynamic>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "time")
  final String? time;
  @override
  @JsonKey(name: "date")
  final DateTime? date;

  @override
  String toString() {
    return 'Message(id: $id, message: $message, type: $type, media: $media, time: $time, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, message, type,
      const DeepCollectionEquality().hash(_media), time, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "media") final List<dynamic>? media,
      @JsonKey(name: "time") final String? time,
      @JsonKey(name: "date") final DateTime? date}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "media")
  List<dynamic>? get media;
  @override
  @JsonKey(name: "time")
  String? get time;
  @override
  @JsonKey(name: "date")
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
