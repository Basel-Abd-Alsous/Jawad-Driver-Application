// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_track_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TravelTrackModel _$TravelTrackModelFromJson(Map<String, dynamic> json) {
  return _TravelTrackModel.fromJson(json);
}

/// @nodoc
mixin _$TravelTrackModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "payload")
  List<Payload>? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelTrackModelCopyWith<TravelTrackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelTrackModelCopyWith<$Res> {
  factory $TravelTrackModelCopyWith(
          TravelTrackModel value, $Res Function(TravelTrackModel) then) =
      _$TravelTrackModelCopyWithImpl<$Res, TravelTrackModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "payload") List<Payload>? payload,
      @JsonKey(name: "isSuccess") bool? isSuccess});
}

/// @nodoc
class _$TravelTrackModelCopyWithImpl<$Res, $Val extends TravelTrackModel>
    implements $TravelTrackModelCopyWith<$Res> {
  _$TravelTrackModelCopyWithImpl(this._value, this._then);

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
              as List<Payload>?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelTrackModelImplCopyWith<$Res>
    implements $TravelTrackModelCopyWith<$Res> {
  factory _$$TravelTrackModelImplCopyWith(_$TravelTrackModelImpl value,
          $Res Function(_$TravelTrackModelImpl) then) =
      __$$TravelTrackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "payload") List<Payload>? payload,
      @JsonKey(name: "isSuccess") bool? isSuccess});
}

/// @nodoc
class __$$TravelTrackModelImplCopyWithImpl<$Res>
    extends _$TravelTrackModelCopyWithImpl<$Res, _$TravelTrackModelImpl>
    implements _$$TravelTrackModelImplCopyWith<$Res> {
  __$$TravelTrackModelImplCopyWithImpl(_$TravelTrackModelImpl _value,
      $Res Function(_$TravelTrackModelImpl) _then)
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
    return _then(_$TravelTrackModelImpl(
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
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<Payload>?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelTrackModelImpl implements _TravelTrackModel {
  const _$TravelTrackModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "payload") final List<Payload>? payload,
      @JsonKey(name: "isSuccess") this.isSuccess})
      : _payload = payload;

  factory _$TravelTrackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelTrackModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<Payload>? _payload;
  @override
  @JsonKey(name: "payload")
  List<Payload>? get payload {
    final value = _payload;
    if (value == null) return null;
    if (_payload is EqualUnmodifiableListView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;

  @override
  String toString() {
    return 'TravelTrackModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelTrackModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._payload, _payload) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message,
      const DeepCollectionEquality().hash(_payload), isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelTrackModelImplCopyWith<_$TravelTrackModelImpl> get copyWith =>
      __$$TravelTrackModelImplCopyWithImpl<_$TravelTrackModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelTrackModelImplToJson(
      this,
    );
  }
}

abstract class _TravelTrackModel implements TravelTrackModel {
  const factory _TravelTrackModel(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "payload") final List<Payload>? payload,
          @JsonKey(name: "isSuccess") final bool? isSuccess}) =
      _$TravelTrackModelImpl;

  factory _TravelTrackModel.fromJson(Map<String, dynamic> json) =
      _$TravelTrackModelImpl.fromJson;

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
  List<Payload>? get payload;
  @override
  @JsonKey(name: "isSuccess")
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$TravelTrackModelImplCopyWith<_$TravelTrackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
mixin _$Payload {
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude});
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
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
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
      {@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude});
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
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$PayloadImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayloadImpl implements _Payload {
  const _$PayloadImpl(
      {@JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude});

  factory _$PayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayloadImplFromJson(json);

  @override
  @JsonKey(name: "latitude")
  final double? latitude;
  @override
  @JsonKey(name: "longitude")
  final double? longitude;

  @override
  String toString() {
    return 'Payload(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayloadImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

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
      {@JsonKey(name: "latitude") final double? latitude,
      @JsonKey(name: "longitude") final double? longitude}) = _$PayloadImpl;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$PayloadImpl.fromJson;

  @override
  @JsonKey(name: "latitude")
  double? get latitude;
  @override
  @JsonKey(name: "longitude")
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$PayloadImplCopyWith<_$PayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
