// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'code') int? get code;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'payload') Payload? get payload;@JsonKey(name: 'isSuccess') bool? get isSuccess;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

@override
String toString() {
  return 'UserModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') Payload? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});


$PayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Payload?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
    return null;
  }

  return $PayloadCopyWith<$Res>(_self.payload!, (value) {
    return _then(_self.copyWith(payload: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  Payload? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  Payload? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  Payload? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({@JsonKey(name: 'status') this.status, @JsonKey(name: 'code') this.code, @JsonKey(name: 'message') this.message, @JsonKey(name: 'payload') this.payload, @JsonKey(name: 'isSuccess') this.isSuccess});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'code') final  int? code;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'payload') final  Payload? payload;
@override@JsonKey(name: 'isSuccess') final  bool? isSuccess;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

@override
String toString() {
  return 'UserModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') Payload? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});


@override $PayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_UserModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Payload?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
    return null;
  }

  return $PayloadCopyWith<$Res>(_self.payload!, (value) {
    return _then(_self.copyWith(payload: value));
  });
}
}


/// @nodoc
mixin _$Payload {

@JsonKey(name: 'driver') Driver? get driver;
/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayloadCopyWith<Payload> get copyWith => _$PayloadCopyWithImpl<Payload>(this as Payload, _$identity);

  /// Serializes this Payload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payload&&(identical(other.driver, driver) || other.driver == driver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,driver);

@override
String toString() {
  return 'Payload(driver: $driver)';
}


}

/// @nodoc
abstract mixin class $PayloadCopyWith<$Res>  {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) _then) = _$PayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'driver') Driver? driver
});


$DriverCopyWith<$Res>? get driver;

}
/// @nodoc
class _$PayloadCopyWithImpl<$Res>
    implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._self, this._then);

  final Payload _self;
  final $Res Function(Payload) _then;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? driver = freezed,}) {
  return _then(_self.copyWith(
driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as Driver?,
  ));
}
/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $DriverCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}


/// Adds pattern-matching-related methods to [Payload].
extension PayloadPatterns on Payload {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payload value)  $default,){
final _that = this;
switch (_that) {
case _Payload():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payload value)?  $default,){
final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'driver')  Driver? driver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.driver);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'driver')  Driver? driver)  $default,) {final _that = this;
switch (_that) {
case _Payload():
return $default(_that.driver);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'driver')  Driver? driver)?  $default,) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.driver);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payload implements Payload {
  const _Payload({@JsonKey(name: 'driver') this.driver});
  factory _Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);

@override@JsonKey(name: 'driver') final  Driver? driver;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayloadCopyWith<_Payload> get copyWith => __$PayloadCopyWithImpl<_Payload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payload&&(identical(other.driver, driver) || other.driver == driver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,driver);

@override
String toString() {
  return 'Payload(driver: $driver)';
}


}

/// @nodoc
abstract mixin class _$PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$PayloadCopyWith(_Payload value, $Res Function(_Payload) _then) = __$PayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'driver') Driver? driver
});


@override $DriverCopyWith<$Res>? get driver;

}
/// @nodoc
class __$PayloadCopyWithImpl<$Res>
    implements _$PayloadCopyWith<$Res> {
  __$PayloadCopyWithImpl(this._self, this._then);

  final _Payload _self;
  final $Res Function(_Payload) _then;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? driver = freezed,}) {
  return _then(_Payload(
driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as Driver?,
  ));
}

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $DriverCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}


/// @nodoc
mixin _$Driver {

@HiveField(1)@JsonKey(name: 'id') int? get id;@HiveField(2)@JsonKey(name: 'first_name') String? get firstName;@HiveField(3)@JsonKey(name: 'last_name') dynamic get lastName;@HiveField(4)@JsonKey(name: 'email') dynamic get email;@HiveField(5)@JsonKey(name: 'phone') String? get phone;@HiveField(6)@JsonKey(name: 'address') dynamic get address;@HiveField(7)@JsonKey(name: 'gender') dynamic get gender;@HiveField(8)@JsonKey(name: 'registration_status') String? get registrationStatus;@HiveField(9)@JsonKey(name: 'status') String? get status;@HiveField(10)@JsonKey(name: 'work_status') bool? get workStatus;@HiveField(11)@JsonKey(name: 'profile_image') String? get profileImage;@HiveField(12)@JsonKey(name: 'created_at') DateTime? get createdAt;@HiveField(13)@JsonKey(name: 'updated_at') DateTime? get updatedAt;@HiveField(14)@JsonKey(name: 'rating') dynamic get rating;@HiveField(15)@JsonKey(name: "legal_status") String? get legalStatus;@HiveField(16)@JsonKey(name: "car_info") CarInfo? get carInfo;@HiveField(17)@JsonKey(name: "bank_info") BankInfo? get bankInfo;
/// Create a copy of Driver
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverCopyWith<Driver> get copyWith => _$DriverCopyWithImpl<Driver>(this as Driver, _$identity);

  /// Serializes this Driver to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Driver&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&const DeepCollectionEquality().equals(other.lastName, lastName)&&const DeepCollectionEquality().equals(other.email, email)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.address, address)&&const DeepCollectionEquality().equals(other.gender, gender)&&(identical(other.registrationStatus, registrationStatus) || other.registrationStatus == registrationStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.workStatus, workStatus) || other.workStatus == workStatus)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.rating, rating)&&(identical(other.legalStatus, legalStatus) || other.legalStatus == legalStatus)&&(identical(other.carInfo, carInfo) || other.carInfo == carInfo)&&(identical(other.bankInfo, bankInfo) || other.bankInfo == bankInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,const DeepCollectionEquality().hash(lastName),const DeepCollectionEquality().hash(email),phone,const DeepCollectionEquality().hash(address),const DeepCollectionEquality().hash(gender),registrationStatus,status,workStatus,profileImage,createdAt,updatedAt,const DeepCollectionEquality().hash(rating),legalStatus,carInfo,bankInfo);

@override
String toString() {
  return 'Driver(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, address: $address, gender: $gender, registrationStatus: $registrationStatus, status: $status, workStatus: $workStatus, profileImage: $profileImage, createdAt: $createdAt, updatedAt: $updatedAt, rating: $rating, legalStatus: $legalStatus, carInfo: $carInfo, bankInfo: $bankInfo)';
}


}

/// @nodoc
abstract mixin class $DriverCopyWith<$Res>  {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) _then) = _$DriverCopyWithImpl;
@useResult
$Res call({
@HiveField(1)@JsonKey(name: 'id') int? id,@HiveField(2)@JsonKey(name: 'first_name') String? firstName,@HiveField(3)@JsonKey(name: 'last_name') dynamic lastName,@HiveField(4)@JsonKey(name: 'email') dynamic email,@HiveField(5)@JsonKey(name: 'phone') String? phone,@HiveField(6)@JsonKey(name: 'address') dynamic address,@HiveField(7)@JsonKey(name: 'gender') dynamic gender,@HiveField(8)@JsonKey(name: 'registration_status') String? registrationStatus,@HiveField(9)@JsonKey(name: 'status') String? status,@HiveField(10)@JsonKey(name: 'work_status') bool? workStatus,@HiveField(11)@JsonKey(name: 'profile_image') String? profileImage,@HiveField(12)@JsonKey(name: 'created_at') DateTime? createdAt,@HiveField(13)@JsonKey(name: 'updated_at') DateTime? updatedAt,@HiveField(14)@JsonKey(name: 'rating') dynamic rating,@HiveField(15)@JsonKey(name: "legal_status") String? legalStatus,@HiveField(16)@JsonKey(name: "car_info") CarInfo? carInfo,@HiveField(17)@JsonKey(name: "bank_info") BankInfo? bankInfo
});


$CarInfoCopyWith<$Res>? get carInfo;$BankInfoCopyWith<$Res>? get bankInfo;

}
/// @nodoc
class _$DriverCopyWithImpl<$Res>
    implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._self, this._then);

  final Driver _self;
  final $Res Function(Driver) _then;

/// Create a copy of Driver
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? phone = freezed,Object? address = freezed,Object? gender = freezed,Object? registrationStatus = freezed,Object? status = freezed,Object? workStatus = freezed,Object? profileImage = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? rating = freezed,Object? legalStatus = freezed,Object? carInfo = freezed,Object? bankInfo = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as dynamic,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as dynamic,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as dynamic,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as dynamic,registrationStatus: freezed == registrationStatus ? _self.registrationStatus : registrationStatus // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,workStatus: freezed == workStatus ? _self.workStatus : workStatus // ignore: cast_nullable_to_non_nullable
as bool?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as dynamic,legalStatus: freezed == legalStatus ? _self.legalStatus : legalStatus // ignore: cast_nullable_to_non_nullable
as String?,carInfo: freezed == carInfo ? _self.carInfo : carInfo // ignore: cast_nullable_to_non_nullable
as CarInfo?,bankInfo: freezed == bankInfo ? _self.bankInfo : bankInfo // ignore: cast_nullable_to_non_nullable
as BankInfo?,
  ));
}
/// Create a copy of Driver
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CarInfoCopyWith<$Res>? get carInfo {
    if (_self.carInfo == null) {
    return null;
  }

  return $CarInfoCopyWith<$Res>(_self.carInfo!, (value) {
    return _then(_self.copyWith(carInfo: value));
  });
}/// Create a copy of Driver
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankInfoCopyWith<$Res>? get bankInfo {
    if (_self.bankInfo == null) {
    return null;
  }

  return $BankInfoCopyWith<$Res>(_self.bankInfo!, (value) {
    return _then(_self.copyWith(bankInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [Driver].
extension DriverPatterns on Driver {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Driver value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Driver() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Driver value)  $default,){
final _that = this;
switch (_that) {
case _Driver():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Driver value)?  $default,){
final _that = this;
switch (_that) {
case _Driver() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(1)@JsonKey(name: 'id')  int? id, @HiveField(2)@JsonKey(name: 'first_name')  String? firstName, @HiveField(3)@JsonKey(name: 'last_name')  dynamic lastName, @HiveField(4)@JsonKey(name: 'email')  dynamic email, @HiveField(5)@JsonKey(name: 'phone')  String? phone, @HiveField(6)@JsonKey(name: 'address')  dynamic address, @HiveField(7)@JsonKey(name: 'gender')  dynamic gender, @HiveField(8)@JsonKey(name: 'registration_status')  String? registrationStatus, @HiveField(9)@JsonKey(name: 'status')  String? status, @HiveField(10)@JsonKey(name: 'work_status')  bool? workStatus, @HiveField(11)@JsonKey(name: 'profile_image')  String? profileImage, @HiveField(12)@JsonKey(name: 'created_at')  DateTime? createdAt, @HiveField(13)@JsonKey(name: 'updated_at')  DateTime? updatedAt, @HiveField(14)@JsonKey(name: 'rating')  dynamic rating, @HiveField(15)@JsonKey(name: "legal_status")  String? legalStatus, @HiveField(16)@JsonKey(name: "car_info")  CarInfo? carInfo, @HiveField(17)@JsonKey(name: "bank_info")  BankInfo? bankInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Driver() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phone,_that.address,_that.gender,_that.registrationStatus,_that.status,_that.workStatus,_that.profileImage,_that.createdAt,_that.updatedAt,_that.rating,_that.legalStatus,_that.carInfo,_that.bankInfo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(1)@JsonKey(name: 'id')  int? id, @HiveField(2)@JsonKey(name: 'first_name')  String? firstName, @HiveField(3)@JsonKey(name: 'last_name')  dynamic lastName, @HiveField(4)@JsonKey(name: 'email')  dynamic email, @HiveField(5)@JsonKey(name: 'phone')  String? phone, @HiveField(6)@JsonKey(name: 'address')  dynamic address, @HiveField(7)@JsonKey(name: 'gender')  dynamic gender, @HiveField(8)@JsonKey(name: 'registration_status')  String? registrationStatus, @HiveField(9)@JsonKey(name: 'status')  String? status, @HiveField(10)@JsonKey(name: 'work_status')  bool? workStatus, @HiveField(11)@JsonKey(name: 'profile_image')  String? profileImage, @HiveField(12)@JsonKey(name: 'created_at')  DateTime? createdAt, @HiveField(13)@JsonKey(name: 'updated_at')  DateTime? updatedAt, @HiveField(14)@JsonKey(name: 'rating')  dynamic rating, @HiveField(15)@JsonKey(name: "legal_status")  String? legalStatus, @HiveField(16)@JsonKey(name: "car_info")  CarInfo? carInfo, @HiveField(17)@JsonKey(name: "bank_info")  BankInfo? bankInfo)  $default,) {final _that = this;
switch (_that) {
case _Driver():
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phone,_that.address,_that.gender,_that.registrationStatus,_that.status,_that.workStatus,_that.profileImage,_that.createdAt,_that.updatedAt,_that.rating,_that.legalStatus,_that.carInfo,_that.bankInfo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(1)@JsonKey(name: 'id')  int? id, @HiveField(2)@JsonKey(name: 'first_name')  String? firstName, @HiveField(3)@JsonKey(name: 'last_name')  dynamic lastName, @HiveField(4)@JsonKey(name: 'email')  dynamic email, @HiveField(5)@JsonKey(name: 'phone')  String? phone, @HiveField(6)@JsonKey(name: 'address')  dynamic address, @HiveField(7)@JsonKey(name: 'gender')  dynamic gender, @HiveField(8)@JsonKey(name: 'registration_status')  String? registrationStatus, @HiveField(9)@JsonKey(name: 'status')  String? status, @HiveField(10)@JsonKey(name: 'work_status')  bool? workStatus, @HiveField(11)@JsonKey(name: 'profile_image')  String? profileImage, @HiveField(12)@JsonKey(name: 'created_at')  DateTime? createdAt, @HiveField(13)@JsonKey(name: 'updated_at')  DateTime? updatedAt, @HiveField(14)@JsonKey(name: 'rating')  dynamic rating, @HiveField(15)@JsonKey(name: "legal_status")  String? legalStatus, @HiveField(16)@JsonKey(name: "car_info")  CarInfo? carInfo, @HiveField(17)@JsonKey(name: "bank_info")  BankInfo? bankInfo)?  $default,) {final _that = this;
switch (_that) {
case _Driver() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phone,_that.address,_that.gender,_that.registrationStatus,_that.status,_that.workStatus,_that.profileImage,_that.createdAt,_that.updatedAt,_that.rating,_that.legalStatus,_that.carInfo,_that.bankInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Driver implements Driver {
  const _Driver({@HiveField(1)@JsonKey(name: 'id') this.id, @HiveField(2)@JsonKey(name: 'first_name') this.firstName, @HiveField(3)@JsonKey(name: 'last_name') this.lastName, @HiveField(4)@JsonKey(name: 'email') this.email, @HiveField(5)@JsonKey(name: 'phone') this.phone, @HiveField(6)@JsonKey(name: 'address') this.address, @HiveField(7)@JsonKey(name: 'gender') this.gender, @HiveField(8)@JsonKey(name: 'registration_status') this.registrationStatus, @HiveField(9)@JsonKey(name: 'status') this.status, @HiveField(10)@JsonKey(name: 'work_status') this.workStatus, @HiveField(11)@JsonKey(name: 'profile_image') this.profileImage, @HiveField(12)@JsonKey(name: 'created_at') this.createdAt, @HiveField(13)@JsonKey(name: 'updated_at') this.updatedAt, @HiveField(14)@JsonKey(name: 'rating') this.rating, @HiveField(15)@JsonKey(name: "legal_status") this.legalStatus, @HiveField(16)@JsonKey(name: "car_info") this.carInfo, @HiveField(17)@JsonKey(name: "bank_info") this.bankInfo});
  factory _Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

@override@HiveField(1)@JsonKey(name: 'id') final  int? id;
@override@HiveField(2)@JsonKey(name: 'first_name') final  String? firstName;
@override@HiveField(3)@JsonKey(name: 'last_name') final  dynamic lastName;
@override@HiveField(4)@JsonKey(name: 'email') final  dynamic email;
@override@HiveField(5)@JsonKey(name: 'phone') final  String? phone;
@override@HiveField(6)@JsonKey(name: 'address') final  dynamic address;
@override@HiveField(7)@JsonKey(name: 'gender') final  dynamic gender;
@override@HiveField(8)@JsonKey(name: 'registration_status') final  String? registrationStatus;
@override@HiveField(9)@JsonKey(name: 'status') final  String? status;
@override@HiveField(10)@JsonKey(name: 'work_status') final  bool? workStatus;
@override@HiveField(11)@JsonKey(name: 'profile_image') final  String? profileImage;
@override@HiveField(12)@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@HiveField(13)@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@HiveField(14)@JsonKey(name: 'rating') final  dynamic rating;
@override@HiveField(15)@JsonKey(name: "legal_status") final  String? legalStatus;
@override@HiveField(16)@JsonKey(name: "car_info") final  CarInfo? carInfo;
@override@HiveField(17)@JsonKey(name: "bank_info") final  BankInfo? bankInfo;

/// Create a copy of Driver
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverCopyWith<_Driver> get copyWith => __$DriverCopyWithImpl<_Driver>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Driver&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&const DeepCollectionEquality().equals(other.lastName, lastName)&&const DeepCollectionEquality().equals(other.email, email)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.address, address)&&const DeepCollectionEquality().equals(other.gender, gender)&&(identical(other.registrationStatus, registrationStatus) || other.registrationStatus == registrationStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.workStatus, workStatus) || other.workStatus == workStatus)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.rating, rating)&&(identical(other.legalStatus, legalStatus) || other.legalStatus == legalStatus)&&(identical(other.carInfo, carInfo) || other.carInfo == carInfo)&&(identical(other.bankInfo, bankInfo) || other.bankInfo == bankInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,const DeepCollectionEquality().hash(lastName),const DeepCollectionEquality().hash(email),phone,const DeepCollectionEquality().hash(address),const DeepCollectionEquality().hash(gender),registrationStatus,status,workStatus,profileImage,createdAt,updatedAt,const DeepCollectionEquality().hash(rating),legalStatus,carInfo,bankInfo);

@override
String toString() {
  return 'Driver(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, address: $address, gender: $gender, registrationStatus: $registrationStatus, status: $status, workStatus: $workStatus, profileImage: $profileImage, createdAt: $createdAt, updatedAt: $updatedAt, rating: $rating, legalStatus: $legalStatus, carInfo: $carInfo, bankInfo: $bankInfo)';
}


}

/// @nodoc
abstract mixin class _$DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$DriverCopyWith(_Driver value, $Res Function(_Driver) _then) = __$DriverCopyWithImpl;
@override @useResult
$Res call({
@HiveField(1)@JsonKey(name: 'id') int? id,@HiveField(2)@JsonKey(name: 'first_name') String? firstName,@HiveField(3)@JsonKey(name: 'last_name') dynamic lastName,@HiveField(4)@JsonKey(name: 'email') dynamic email,@HiveField(5)@JsonKey(name: 'phone') String? phone,@HiveField(6)@JsonKey(name: 'address') dynamic address,@HiveField(7)@JsonKey(name: 'gender') dynamic gender,@HiveField(8)@JsonKey(name: 'registration_status') String? registrationStatus,@HiveField(9)@JsonKey(name: 'status') String? status,@HiveField(10)@JsonKey(name: 'work_status') bool? workStatus,@HiveField(11)@JsonKey(name: 'profile_image') String? profileImage,@HiveField(12)@JsonKey(name: 'created_at') DateTime? createdAt,@HiveField(13)@JsonKey(name: 'updated_at') DateTime? updatedAt,@HiveField(14)@JsonKey(name: 'rating') dynamic rating,@HiveField(15)@JsonKey(name: "legal_status") String? legalStatus,@HiveField(16)@JsonKey(name: "car_info") CarInfo? carInfo,@HiveField(17)@JsonKey(name: "bank_info") BankInfo? bankInfo
});


@override $CarInfoCopyWith<$Res>? get carInfo;@override $BankInfoCopyWith<$Res>? get bankInfo;

}
/// @nodoc
class __$DriverCopyWithImpl<$Res>
    implements _$DriverCopyWith<$Res> {
  __$DriverCopyWithImpl(this._self, this._then);

  final _Driver _self;
  final $Res Function(_Driver) _then;

/// Create a copy of Driver
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? phone = freezed,Object? address = freezed,Object? gender = freezed,Object? registrationStatus = freezed,Object? status = freezed,Object? workStatus = freezed,Object? profileImage = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? rating = freezed,Object? legalStatus = freezed,Object? carInfo = freezed,Object? bankInfo = freezed,}) {
  return _then(_Driver(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as dynamic,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as dynamic,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as dynamic,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as dynamic,registrationStatus: freezed == registrationStatus ? _self.registrationStatus : registrationStatus // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,workStatus: freezed == workStatus ? _self.workStatus : workStatus // ignore: cast_nullable_to_non_nullable
as bool?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as dynamic,legalStatus: freezed == legalStatus ? _self.legalStatus : legalStatus // ignore: cast_nullable_to_non_nullable
as String?,carInfo: freezed == carInfo ? _self.carInfo : carInfo // ignore: cast_nullable_to_non_nullable
as CarInfo?,bankInfo: freezed == bankInfo ? _self.bankInfo : bankInfo // ignore: cast_nullable_to_non_nullable
as BankInfo?,
  ));
}

/// Create a copy of Driver
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CarInfoCopyWith<$Res>? get carInfo {
    if (_self.carInfo == null) {
    return null;
  }

  return $CarInfoCopyWith<$Res>(_self.carInfo!, (value) {
    return _then(_self.copyWith(carInfo: value));
  });
}/// Create a copy of Driver
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankInfoCopyWith<$Res>? get bankInfo {
    if (_self.bankInfo == null) {
    return null;
  }

  return $BankInfoCopyWith<$Res>(_self.bankInfo!, (value) {
    return _then(_self.copyWith(bankInfo: value));
  });
}
}


/// @nodoc
mixin _$BankInfo {

@HiveField(1)@JsonKey(name: "id") int? get id;@HiveField(2)@JsonKey(name: "bank_name") String? get bankName;@HiveField(3)@JsonKey(name: "account_name") dynamic get accountName;@HiveField(4)@JsonKey(name: "account_number") dynamic get accountNumber;
/// Create a copy of BankInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankInfoCopyWith<BankInfo> get copyWith => _$BankInfoCopyWithImpl<BankInfo>(this as BankInfo, _$identity);

  /// Serializes this BankInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&const DeepCollectionEquality().equals(other.accountName, accountName)&&const DeepCollectionEquality().equals(other.accountNumber, accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bankName,const DeepCollectionEquality().hash(accountName),const DeepCollectionEquality().hash(accountNumber));

@override
String toString() {
  return 'BankInfo(id: $id, bankName: $bankName, accountName: $accountName, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class $BankInfoCopyWith<$Res>  {
  factory $BankInfoCopyWith(BankInfo value, $Res Function(BankInfo) _then) = _$BankInfoCopyWithImpl;
@useResult
$Res call({
@HiveField(1)@JsonKey(name: "id") int? id,@HiveField(2)@JsonKey(name: "bank_name") String? bankName,@HiveField(3)@JsonKey(name: "account_name") dynamic accountName,@HiveField(4)@JsonKey(name: "account_number") dynamic accountNumber
});




}
/// @nodoc
class _$BankInfoCopyWithImpl<$Res>
    implements $BankInfoCopyWith<$Res> {
  _$BankInfoCopyWithImpl(this._self, this._then);

  final BankInfo _self;
  final $Res Function(BankInfo) _then;

/// Create a copy of BankInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? bankName = freezed,Object? accountName = freezed,Object? accountNumber = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as dynamic,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [BankInfo].
extension BankInfoPatterns on BankInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankInfo value)  $default,){
final _that = this;
switch (_that) {
case _BankInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankInfo value)?  $default,){
final _that = this;
switch (_that) {
case _BankInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(1)@JsonKey(name: "id")  int? id, @HiveField(2)@JsonKey(name: "bank_name")  String? bankName, @HiveField(3)@JsonKey(name: "account_name")  dynamic accountName, @HiveField(4)@JsonKey(name: "account_number")  dynamic accountNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankInfo() when $default != null:
return $default(_that.id,_that.bankName,_that.accountName,_that.accountNumber);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(1)@JsonKey(name: "id")  int? id, @HiveField(2)@JsonKey(name: "bank_name")  String? bankName, @HiveField(3)@JsonKey(name: "account_name")  dynamic accountName, @HiveField(4)@JsonKey(name: "account_number")  dynamic accountNumber)  $default,) {final _that = this;
switch (_that) {
case _BankInfo():
return $default(_that.id,_that.bankName,_that.accountName,_that.accountNumber);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(1)@JsonKey(name: "id")  int? id, @HiveField(2)@JsonKey(name: "bank_name")  String? bankName, @HiveField(3)@JsonKey(name: "account_name")  dynamic accountName, @HiveField(4)@JsonKey(name: "account_number")  dynamic accountNumber)?  $default,) {final _that = this;
switch (_that) {
case _BankInfo() when $default != null:
return $default(_that.id,_that.bankName,_that.accountName,_that.accountNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankInfo implements BankInfo {
  const _BankInfo({@HiveField(1)@JsonKey(name: "id") this.id, @HiveField(2)@JsonKey(name: "bank_name") this.bankName, @HiveField(3)@JsonKey(name: "account_name") this.accountName, @HiveField(4)@JsonKey(name: "account_number") this.accountNumber});
  factory _BankInfo.fromJson(Map<String, dynamic> json) => _$BankInfoFromJson(json);

@override@HiveField(1)@JsonKey(name: "id") final  int? id;
@override@HiveField(2)@JsonKey(name: "bank_name") final  String? bankName;
@override@HiveField(3)@JsonKey(name: "account_name") final  dynamic accountName;
@override@HiveField(4)@JsonKey(name: "account_number") final  dynamic accountNumber;

/// Create a copy of BankInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankInfoCopyWith<_BankInfo> get copyWith => __$BankInfoCopyWithImpl<_BankInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&const DeepCollectionEquality().equals(other.accountName, accountName)&&const DeepCollectionEquality().equals(other.accountNumber, accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bankName,const DeepCollectionEquality().hash(accountName),const DeepCollectionEquality().hash(accountNumber));

@override
String toString() {
  return 'BankInfo(id: $id, bankName: $bankName, accountName: $accountName, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class _$BankInfoCopyWith<$Res> implements $BankInfoCopyWith<$Res> {
  factory _$BankInfoCopyWith(_BankInfo value, $Res Function(_BankInfo) _then) = __$BankInfoCopyWithImpl;
@override @useResult
$Res call({
@HiveField(1)@JsonKey(name: "id") int? id,@HiveField(2)@JsonKey(name: "bank_name") String? bankName,@HiveField(3)@JsonKey(name: "account_name") dynamic accountName,@HiveField(4)@JsonKey(name: "account_number") dynamic accountNumber
});




}
/// @nodoc
class __$BankInfoCopyWithImpl<$Res>
    implements _$BankInfoCopyWith<$Res> {
  __$BankInfoCopyWithImpl(this._self, this._then);

  final _BankInfo _self;
  final $Res Function(_BankInfo) _then;

/// Create a copy of BankInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? bankName = freezed,Object? accountName = freezed,Object? accountNumber = freezed,}) {
  return _then(_BankInfo(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as dynamic,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$CarInfo {

@HiveField(1)@JsonKey(name: "id") int? get id;@HiveField(2)@JsonKey(name: "car_model") String? get carModel;@HiveField(3)@JsonKey(name: "car_color") String? get carColor;@HiveField(4)@JsonKey(name: "car_plate_number") String? get carPlateNumber;@HiveField(5)@JsonKey(name: "car_year") int? get carYear;@HiveField(6)@JsonKey(name: "license_expiry_date") DateTime? get licenseExpiryDate;@HiveField(7)@JsonKey(name: "sequence_number") String? get sequenceNumber;@HiveField(8)@JsonKey(name: "plate_type") int? get plateType;@HiveField(9)@JsonKey(name: "legal_status") String? get legalStatus;
/// Create a copy of CarInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarInfoCopyWith<CarInfo> get copyWith => _$CarInfoCopyWithImpl<CarInfo>(this as CarInfo, _$identity);

  /// Serializes this CarInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.carModel, carModel) || other.carModel == carModel)&&(identical(other.carColor, carColor) || other.carColor == carColor)&&(identical(other.carPlateNumber, carPlateNumber) || other.carPlateNumber == carPlateNumber)&&(identical(other.carYear, carYear) || other.carYear == carYear)&&(identical(other.licenseExpiryDate, licenseExpiryDate) || other.licenseExpiryDate == licenseExpiryDate)&&(identical(other.sequenceNumber, sequenceNumber) || other.sequenceNumber == sequenceNumber)&&(identical(other.plateType, plateType) || other.plateType == plateType)&&(identical(other.legalStatus, legalStatus) || other.legalStatus == legalStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,carModel,carColor,carPlateNumber,carYear,licenseExpiryDate,sequenceNumber,plateType,legalStatus);

@override
String toString() {
  return 'CarInfo(id: $id, carModel: $carModel, carColor: $carColor, carPlateNumber: $carPlateNumber, carYear: $carYear, licenseExpiryDate: $licenseExpiryDate, sequenceNumber: $sequenceNumber, plateType: $plateType, legalStatus: $legalStatus)';
}


}

/// @nodoc
abstract mixin class $CarInfoCopyWith<$Res>  {
  factory $CarInfoCopyWith(CarInfo value, $Res Function(CarInfo) _then) = _$CarInfoCopyWithImpl;
@useResult
$Res call({
@HiveField(1)@JsonKey(name: "id") int? id,@HiveField(2)@JsonKey(name: "car_model") String? carModel,@HiveField(3)@JsonKey(name: "car_color") String? carColor,@HiveField(4)@JsonKey(name: "car_plate_number") String? carPlateNumber,@HiveField(5)@JsonKey(name: "car_year") int? carYear,@HiveField(6)@JsonKey(name: "license_expiry_date") DateTime? licenseExpiryDate,@HiveField(7)@JsonKey(name: "sequence_number") String? sequenceNumber,@HiveField(8)@JsonKey(name: "plate_type") int? plateType,@HiveField(9)@JsonKey(name: "legal_status") String? legalStatus
});




}
/// @nodoc
class _$CarInfoCopyWithImpl<$Res>
    implements $CarInfoCopyWith<$Res> {
  _$CarInfoCopyWithImpl(this._self, this._then);

  final CarInfo _self;
  final $Res Function(CarInfo) _then;

/// Create a copy of CarInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? carModel = freezed,Object? carColor = freezed,Object? carPlateNumber = freezed,Object? carYear = freezed,Object? licenseExpiryDate = freezed,Object? sequenceNumber = freezed,Object? plateType = freezed,Object? legalStatus = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,carModel: freezed == carModel ? _self.carModel : carModel // ignore: cast_nullable_to_non_nullable
as String?,carColor: freezed == carColor ? _self.carColor : carColor // ignore: cast_nullable_to_non_nullable
as String?,carPlateNumber: freezed == carPlateNumber ? _self.carPlateNumber : carPlateNumber // ignore: cast_nullable_to_non_nullable
as String?,carYear: freezed == carYear ? _self.carYear : carYear // ignore: cast_nullable_to_non_nullable
as int?,licenseExpiryDate: freezed == licenseExpiryDate ? _self.licenseExpiryDate : licenseExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,sequenceNumber: freezed == sequenceNumber ? _self.sequenceNumber : sequenceNumber // ignore: cast_nullable_to_non_nullable
as String?,plateType: freezed == plateType ? _self.plateType : plateType // ignore: cast_nullable_to_non_nullable
as int?,legalStatus: freezed == legalStatus ? _self.legalStatus : legalStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CarInfo].
extension CarInfoPatterns on CarInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CarInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CarInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CarInfo value)  $default,){
final _that = this;
switch (_that) {
case _CarInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CarInfo value)?  $default,){
final _that = this;
switch (_that) {
case _CarInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(1)@JsonKey(name: "id")  int? id, @HiveField(2)@JsonKey(name: "car_model")  String? carModel, @HiveField(3)@JsonKey(name: "car_color")  String? carColor, @HiveField(4)@JsonKey(name: "car_plate_number")  String? carPlateNumber, @HiveField(5)@JsonKey(name: "car_year")  int? carYear, @HiveField(6)@JsonKey(name: "license_expiry_date")  DateTime? licenseExpiryDate, @HiveField(7)@JsonKey(name: "sequence_number")  String? sequenceNumber, @HiveField(8)@JsonKey(name: "plate_type")  int? plateType, @HiveField(9)@JsonKey(name: "legal_status")  String? legalStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CarInfo() when $default != null:
return $default(_that.id,_that.carModel,_that.carColor,_that.carPlateNumber,_that.carYear,_that.licenseExpiryDate,_that.sequenceNumber,_that.plateType,_that.legalStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(1)@JsonKey(name: "id")  int? id, @HiveField(2)@JsonKey(name: "car_model")  String? carModel, @HiveField(3)@JsonKey(name: "car_color")  String? carColor, @HiveField(4)@JsonKey(name: "car_plate_number")  String? carPlateNumber, @HiveField(5)@JsonKey(name: "car_year")  int? carYear, @HiveField(6)@JsonKey(name: "license_expiry_date")  DateTime? licenseExpiryDate, @HiveField(7)@JsonKey(name: "sequence_number")  String? sequenceNumber, @HiveField(8)@JsonKey(name: "plate_type")  int? plateType, @HiveField(9)@JsonKey(name: "legal_status")  String? legalStatus)  $default,) {final _that = this;
switch (_that) {
case _CarInfo():
return $default(_that.id,_that.carModel,_that.carColor,_that.carPlateNumber,_that.carYear,_that.licenseExpiryDate,_that.sequenceNumber,_that.plateType,_that.legalStatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(1)@JsonKey(name: "id")  int? id, @HiveField(2)@JsonKey(name: "car_model")  String? carModel, @HiveField(3)@JsonKey(name: "car_color")  String? carColor, @HiveField(4)@JsonKey(name: "car_plate_number")  String? carPlateNumber, @HiveField(5)@JsonKey(name: "car_year")  int? carYear, @HiveField(6)@JsonKey(name: "license_expiry_date")  DateTime? licenseExpiryDate, @HiveField(7)@JsonKey(name: "sequence_number")  String? sequenceNumber, @HiveField(8)@JsonKey(name: "plate_type")  int? plateType, @HiveField(9)@JsonKey(name: "legal_status")  String? legalStatus)?  $default,) {final _that = this;
switch (_that) {
case _CarInfo() when $default != null:
return $default(_that.id,_that.carModel,_that.carColor,_that.carPlateNumber,_that.carYear,_that.licenseExpiryDate,_that.sequenceNumber,_that.plateType,_that.legalStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CarInfo implements CarInfo {
  const _CarInfo({@HiveField(1)@JsonKey(name: "id") this.id, @HiveField(2)@JsonKey(name: "car_model") this.carModel, @HiveField(3)@JsonKey(name: "car_color") this.carColor, @HiveField(4)@JsonKey(name: "car_plate_number") this.carPlateNumber, @HiveField(5)@JsonKey(name: "car_year") this.carYear, @HiveField(6)@JsonKey(name: "license_expiry_date") this.licenseExpiryDate, @HiveField(7)@JsonKey(name: "sequence_number") this.sequenceNumber, @HiveField(8)@JsonKey(name: "plate_type") this.plateType, @HiveField(9)@JsonKey(name: "legal_status") this.legalStatus});
  factory _CarInfo.fromJson(Map<String, dynamic> json) => _$CarInfoFromJson(json);

@override@HiveField(1)@JsonKey(name: "id") final  int? id;
@override@HiveField(2)@JsonKey(name: "car_model") final  String? carModel;
@override@HiveField(3)@JsonKey(name: "car_color") final  String? carColor;
@override@HiveField(4)@JsonKey(name: "car_plate_number") final  String? carPlateNumber;
@override@HiveField(5)@JsonKey(name: "car_year") final  int? carYear;
@override@HiveField(6)@JsonKey(name: "license_expiry_date") final  DateTime? licenseExpiryDate;
@override@HiveField(7)@JsonKey(name: "sequence_number") final  String? sequenceNumber;
@override@HiveField(8)@JsonKey(name: "plate_type") final  int? plateType;
@override@HiveField(9)@JsonKey(name: "legal_status") final  String? legalStatus;

/// Create a copy of CarInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarInfoCopyWith<_CarInfo> get copyWith => __$CarInfoCopyWithImpl<_CarInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.carModel, carModel) || other.carModel == carModel)&&(identical(other.carColor, carColor) || other.carColor == carColor)&&(identical(other.carPlateNumber, carPlateNumber) || other.carPlateNumber == carPlateNumber)&&(identical(other.carYear, carYear) || other.carYear == carYear)&&(identical(other.licenseExpiryDate, licenseExpiryDate) || other.licenseExpiryDate == licenseExpiryDate)&&(identical(other.sequenceNumber, sequenceNumber) || other.sequenceNumber == sequenceNumber)&&(identical(other.plateType, plateType) || other.plateType == plateType)&&(identical(other.legalStatus, legalStatus) || other.legalStatus == legalStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,carModel,carColor,carPlateNumber,carYear,licenseExpiryDate,sequenceNumber,plateType,legalStatus);

@override
String toString() {
  return 'CarInfo(id: $id, carModel: $carModel, carColor: $carColor, carPlateNumber: $carPlateNumber, carYear: $carYear, licenseExpiryDate: $licenseExpiryDate, sequenceNumber: $sequenceNumber, plateType: $plateType, legalStatus: $legalStatus)';
}


}

/// @nodoc
abstract mixin class _$CarInfoCopyWith<$Res> implements $CarInfoCopyWith<$Res> {
  factory _$CarInfoCopyWith(_CarInfo value, $Res Function(_CarInfo) _then) = __$CarInfoCopyWithImpl;
@override @useResult
$Res call({
@HiveField(1)@JsonKey(name: "id") int? id,@HiveField(2)@JsonKey(name: "car_model") String? carModel,@HiveField(3)@JsonKey(name: "car_color") String? carColor,@HiveField(4)@JsonKey(name: "car_plate_number") String? carPlateNumber,@HiveField(5)@JsonKey(name: "car_year") int? carYear,@HiveField(6)@JsonKey(name: "license_expiry_date") DateTime? licenseExpiryDate,@HiveField(7)@JsonKey(name: "sequence_number") String? sequenceNumber,@HiveField(8)@JsonKey(name: "plate_type") int? plateType,@HiveField(9)@JsonKey(name: "legal_status") String? legalStatus
});




}
/// @nodoc
class __$CarInfoCopyWithImpl<$Res>
    implements _$CarInfoCopyWith<$Res> {
  __$CarInfoCopyWithImpl(this._self, this._then);

  final _CarInfo _self;
  final $Res Function(_CarInfo) _then;

/// Create a copy of CarInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? carModel = freezed,Object? carColor = freezed,Object? carPlateNumber = freezed,Object? carYear = freezed,Object? licenseExpiryDate = freezed,Object? sequenceNumber = freezed,Object? plateType = freezed,Object? legalStatus = freezed,}) {
  return _then(_CarInfo(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,carModel: freezed == carModel ? _self.carModel : carModel // ignore: cast_nullable_to_non_nullable
as String?,carColor: freezed == carColor ? _self.carColor : carColor // ignore: cast_nullable_to_non_nullable
as String?,carPlateNumber: freezed == carPlateNumber ? _self.carPlateNumber : carPlateNumber // ignore: cast_nullable_to_non_nullable
as String?,carYear: freezed == carYear ? _self.carYear : carYear // ignore: cast_nullable_to_non_nullable
as int?,licenseExpiryDate: freezed == licenseExpiryDate ? _self.licenseExpiryDate : licenseExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,sequenceNumber: freezed == sequenceNumber ? _self.sequenceNumber : sequenceNumber // ignore: cast_nullable_to_non_nullable
as String?,plateType: freezed == plateType ? _self.plateType : plateType // ignore: cast_nullable_to_non_nullable
as int?,legalStatus: freezed == legalStatus ? _self.legalStatus : legalStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
