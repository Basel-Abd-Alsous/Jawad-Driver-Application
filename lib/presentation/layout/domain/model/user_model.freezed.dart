// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'payload')
  Payload? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: 'isSuccess')
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'payload') Payload? payload,
      @JsonKey(name: 'isSuccess') bool? isSuccess});

  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'payload') Payload? payload,
      @JsonKey(name: 'isSuccess') bool? isSuccess});

  @override
  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
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
    return _then(_$UserModelImpl(
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
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'payload') this.payload,
      @JsonKey(name: 'isSuccess') this.isSuccess});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'payload')
  final Payload? payload;
  @override
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;

  @override
  String toString() {
    return 'UserModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
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
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'code') final int? code,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'payload') final Payload? payload,
      @JsonKey(name: 'isSuccess') final bool? isSuccess}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'payload')
  Payload? get payload;
  @override
  @JsonKey(name: 'isSuccess')
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
mixin _$Payload {
  @JsonKey(name: 'driver')
  Driver? get driver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res, Payload>;
  @useResult
  $Res call({@JsonKey(name: 'driver') Driver? driver});

  $DriverCopyWith<$Res>? get driver;
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
    Object? driver = freezed,
  }) {
    return _then(_value.copyWith(
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
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
  $Res call({@JsonKey(name: 'driver') Driver? driver});

  @override
  $DriverCopyWith<$Res>? get driver;
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
    Object? driver = freezed,
  }) {
    return _then(_$PayloadImpl(
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayloadImpl implements _Payload {
  const _$PayloadImpl({@JsonKey(name: 'driver') this.driver});

  factory _$PayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayloadImplFromJson(json);

  @override
  @JsonKey(name: 'driver')
  final Driver? driver;

  @override
  String toString() {
    return 'Payload(driver: $driver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayloadImpl &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, driver);

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
  const factory _Payload({@JsonKey(name: 'driver') final Driver? driver}) =
      _$PayloadImpl;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$PayloadImpl.fromJson;

  @override
  @JsonKey(name: 'driver')
  Driver? get driver;
  @override
  @JsonKey(ignore: true)
  _$$PayloadImplCopyWith<_$PayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return _Driver.fromJson(json);
}

/// @nodoc
mixin _$Driver {
  @HiveField(1)
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'last_name')
  dynamic get lastName => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'email')
  dynamic get email => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'address')
  dynamic get address => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'gender')
  dynamic get gender => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'registration_status')
  String? get registrationStatus => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'work_status')
  bool? get workStatus => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: 'rating')
  dynamic get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res, Driver>;
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: 'id') int? id,
      @HiveField(2) @JsonKey(name: 'first_name') String? firstName,
      @HiveField(3) @JsonKey(name: 'last_name') dynamic lastName,
      @HiveField(4) @JsonKey(name: 'email') dynamic email,
      @HiveField(5) @JsonKey(name: 'phone') String? phone,
      @HiveField(6) @JsonKey(name: 'address') dynamic address,
      @HiveField(7) @JsonKey(name: 'gender') dynamic gender,
      @HiveField(8)
      @JsonKey(name: 'registration_status')
      String? registrationStatus,
      @HiveField(9) @JsonKey(name: 'status') String? status,
      @HiveField(10) @JsonKey(name: 'work_status') bool? workStatus,
      @HiveField(11) @JsonKey(name: 'profile_image') String? profileImage,
      @HiveField(12) @JsonKey(name: 'created_at') DateTime? createdAt,
      @HiveField(13) @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @HiveField(14) @JsonKey(name: 'rating') dynamic rating});
}

/// @nodoc
class _$DriverCopyWithImpl<$Res, $Val extends Driver>
    implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? gender = freezed,
    Object? registrationStatus = freezed,
    Object? status = freezed,
    Object? workStatus = freezed,
    Object? profileImage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as dynamic,
      registrationStatus: freezed == registrationStatus
          ? _value.registrationStatus
          : registrationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      workStatus: freezed == workStatus
          ? _value.workStatus
          : workStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverImplCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$$DriverImplCopyWith(
          _$DriverImpl value, $Res Function(_$DriverImpl) then) =
      __$$DriverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: 'id') int? id,
      @HiveField(2) @JsonKey(name: 'first_name') String? firstName,
      @HiveField(3) @JsonKey(name: 'last_name') dynamic lastName,
      @HiveField(4) @JsonKey(name: 'email') dynamic email,
      @HiveField(5) @JsonKey(name: 'phone') String? phone,
      @HiveField(6) @JsonKey(name: 'address') dynamic address,
      @HiveField(7) @JsonKey(name: 'gender') dynamic gender,
      @HiveField(8)
      @JsonKey(name: 'registration_status')
      String? registrationStatus,
      @HiveField(9) @JsonKey(name: 'status') String? status,
      @HiveField(10) @JsonKey(name: 'work_status') bool? workStatus,
      @HiveField(11) @JsonKey(name: 'profile_image') String? profileImage,
      @HiveField(12) @JsonKey(name: 'created_at') DateTime? createdAt,
      @HiveField(13) @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @HiveField(14) @JsonKey(name: 'rating') dynamic rating});
}

/// @nodoc
class __$$DriverImplCopyWithImpl<$Res>
    extends _$DriverCopyWithImpl<$Res, _$DriverImpl>
    implements _$$DriverImplCopyWith<$Res> {
  __$$DriverImplCopyWithImpl(
      _$DriverImpl _value, $Res Function(_$DriverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? gender = freezed,
    Object? registrationStatus = freezed,
    Object? status = freezed,
    Object? workStatus = freezed,
    Object? profileImage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$DriverImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as dynamic,
      registrationStatus: freezed == registrationStatus
          ? _value.registrationStatus
          : registrationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      workStatus: freezed == workStatus
          ? _value.workStatus
          : workStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverImpl implements _Driver {
  const _$DriverImpl(
      {@HiveField(1) @JsonKey(name: 'id') this.id,
      @HiveField(2) @JsonKey(name: 'first_name') this.firstName,
      @HiveField(3) @JsonKey(name: 'last_name') this.lastName,
      @HiveField(4) @JsonKey(name: 'email') this.email,
      @HiveField(5) @JsonKey(name: 'phone') this.phone,
      @HiveField(6) @JsonKey(name: 'address') this.address,
      @HiveField(7) @JsonKey(name: 'gender') this.gender,
      @HiveField(8)
      @JsonKey(name: 'registration_status')
      this.registrationStatus,
      @HiveField(9) @JsonKey(name: 'status') this.status,
      @HiveField(10) @JsonKey(name: 'work_status') this.workStatus,
      @HiveField(11) @JsonKey(name: 'profile_image') this.profileImage,
      @HiveField(12) @JsonKey(name: 'created_at') this.createdAt,
      @HiveField(13) @JsonKey(name: 'updated_at') this.updatedAt,
      @HiveField(14) @JsonKey(name: 'rating') this.rating});

  factory _$DriverImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverImplFromJson(json);

  @override
  @HiveField(1)
  @JsonKey(name: 'id')
  final int? id;
  @override
  @HiveField(2)
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @HiveField(3)
  @JsonKey(name: 'last_name')
  final dynamic lastName;
  @override
  @HiveField(4)
  @JsonKey(name: 'email')
  final dynamic email;
  @override
  @HiveField(5)
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @HiveField(6)
  @JsonKey(name: 'address')
  final dynamic address;
  @override
  @HiveField(7)
  @JsonKey(name: 'gender')
  final dynamic gender;
  @override
  @HiveField(8)
  @JsonKey(name: 'registration_status')
  final String? registrationStatus;
  @override
  @HiveField(9)
  @JsonKey(name: 'status')
  final String? status;
  @override
  @HiveField(10)
  @JsonKey(name: 'work_status')
  final bool? workStatus;
  @override
  @HiveField(11)
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @HiveField(12)
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @HiveField(13)
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @HiveField(14)
  @JsonKey(name: 'rating')
  final dynamic rating;

  @override
  String toString() {
    return 'Driver(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, address: $address, gender: $gender, registrationStatus: $registrationStatus, status: $status, workStatus: $workStatus, profileImage: $profileImage, createdAt: $createdAt, updatedAt: $updatedAt, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            (identical(other.registrationStatus, registrationStatus) ||
                other.registrationStatus == registrationStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.workStatus, workStatus) ||
                other.workStatus == workStatus) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      phone,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(gender),
      registrationStatus,
      status,
      workStatus,
      profileImage,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverImplCopyWith<_$DriverImpl> get copyWith =>
      __$$DriverImplCopyWithImpl<_$DriverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverImplToJson(
      this,
    );
  }
}

abstract class _Driver implements Driver {
  const factory _Driver(
      {@HiveField(1) @JsonKey(name: 'id') final int? id,
      @HiveField(2) @JsonKey(name: 'first_name') final String? firstName,
      @HiveField(3) @JsonKey(name: 'last_name') final dynamic lastName,
      @HiveField(4) @JsonKey(name: 'email') final dynamic email,
      @HiveField(5) @JsonKey(name: 'phone') final String? phone,
      @HiveField(6) @JsonKey(name: 'address') final dynamic address,
      @HiveField(7) @JsonKey(name: 'gender') final dynamic gender,
      @HiveField(8)
      @JsonKey(name: 'registration_status')
      final String? registrationStatus,
      @HiveField(9) @JsonKey(name: 'status') final String? status,
      @HiveField(10) @JsonKey(name: 'work_status') final bool? workStatus,
      @HiveField(11) @JsonKey(name: 'profile_image') final String? profileImage,
      @HiveField(12) @JsonKey(name: 'created_at') final DateTime? createdAt,
      @HiveField(13) @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @HiveField(14)
      @JsonKey(name: 'rating')
      final dynamic rating}) = _$DriverImpl;

  factory _Driver.fromJson(Map<String, dynamic> json) = _$DriverImpl.fromJson;

  @override
  @HiveField(1)
  @JsonKey(name: 'id')
  int? get id;
  @override
  @HiveField(2)
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @HiveField(3)
  @JsonKey(name: 'last_name')
  dynamic get lastName;
  @override
  @HiveField(4)
  @JsonKey(name: 'email')
  dynamic get email;
  @override
  @HiveField(5)
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @HiveField(6)
  @JsonKey(name: 'address')
  dynamic get address;
  @override
  @HiveField(7)
  @JsonKey(name: 'gender')
  dynamic get gender;
  @override
  @HiveField(8)
  @JsonKey(name: 'registration_status')
  String? get registrationStatus;
  @override
  @HiveField(9)
  @JsonKey(name: 'status')
  String? get status;
  @override
  @HiveField(10)
  @JsonKey(name: 'work_status')
  bool? get workStatus;
  @override
  @HiveField(11)
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @HiveField(12)
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @HiveField(13)
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @HiveField(14)
  @JsonKey(name: 'rating')
  dynamic get rating;
  @override
  @JsonKey(ignore: true)
  _$$DriverImplCopyWith<_$DriverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
