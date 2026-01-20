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

@HiveField(1)@JsonKey(name: 'id') int? get id;@HiveField(2)@JsonKey(name: 'first_name') String? get firstName;@HiveField(3)@JsonKey(name: 'last_name') dynamic get lastName;@HiveField(4)@JsonKey(name: 'email') dynamic get email;@HiveField(5)@JsonKey(name: 'phone') String? get phone;@HiveField(6)@JsonKey(name: 'address') dynamic get address;@HiveField(7)@JsonKey(name: 'gender') dynamic get gender;@HiveField(8)@JsonKey(name: 'registration_status') String? get registrationStatus;@HiveField(9)@JsonKey(name: 'status') String? get status;@HiveField(10)@JsonKey(name: 'work_status') bool? get workStatus;@HiveField(11)@JsonKey(name: 'profile_image') String? get profileImage;@HiveField(12)@JsonKey(name: 'created_at') DateTime? get createdAt;@HiveField(13)@JsonKey(name: 'updated_at') DateTime? get updatedAt;@HiveField(14)@JsonKey(name: 'rating') dynamic get rating;
/// Create a copy of Driver
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverCopyWith<Driver> get copyWith => _$DriverCopyWithImpl<Driver>(this as Driver, _$identity);

  /// Serializes this Driver to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Driver&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&const DeepCollectionEquality().equals(other.lastName, lastName)&&const DeepCollectionEquality().equals(other.email, email)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.address, address)&&const DeepCollectionEquality().equals(other.gender, gender)&&(identical(other.registrationStatus, registrationStatus) || other.registrationStatus == registrationStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.workStatus, workStatus) || other.workStatus == workStatus)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.rating, rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,const DeepCollectionEquality().hash(lastName),const DeepCollectionEquality().hash(email),phone,const DeepCollectionEquality().hash(address),const DeepCollectionEquality().hash(gender),registrationStatus,status,workStatus,profileImage,createdAt,updatedAt,const DeepCollectionEquality().hash(rating));

@override
String toString() {
  return 'Driver(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, address: $address, gender: $gender, registrationStatus: $registrationStatus, status: $status, workStatus: $workStatus, profileImage: $profileImage, createdAt: $createdAt, updatedAt: $updatedAt, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $DriverCopyWith<$Res>  {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) _then) = _$DriverCopyWithImpl;
@useResult
$Res call({
@HiveField(1)@JsonKey(name: 'id') int? id,@HiveField(2)@JsonKey(name: 'first_name') String? firstName,@HiveField(3)@JsonKey(name: 'last_name') dynamic lastName,@HiveField(4)@JsonKey(name: 'email') dynamic email,@HiveField(5)@JsonKey(name: 'phone') String? phone,@HiveField(6)@JsonKey(name: 'address') dynamic address,@HiveField(7)@JsonKey(name: 'gender') dynamic gender,@HiveField(8)@JsonKey(name: 'registration_status') String? registrationStatus,@HiveField(9)@JsonKey(name: 'status') String? status,@HiveField(10)@JsonKey(name: 'work_status') bool? workStatus,@HiveField(11)@JsonKey(name: 'profile_image') String? profileImage,@HiveField(12)@JsonKey(name: 'created_at') DateTime? createdAt,@HiveField(13)@JsonKey(name: 'updated_at') DateTime? updatedAt,@HiveField(14)@JsonKey(name: 'rating') dynamic rating
});




}
/// @nodoc
class _$DriverCopyWithImpl<$Res>
    implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._self, this._then);

  final Driver _self;
  final $Res Function(Driver) _then;

/// Create a copy of Driver
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? phone = freezed,Object? address = freezed,Object? gender = freezed,Object? registrationStatus = freezed,Object? status = freezed,Object? workStatus = freezed,Object? profileImage = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? rating = freezed,}) {
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
as dynamic,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(1)@JsonKey(name: 'id')  int? id, @HiveField(2)@JsonKey(name: 'first_name')  String? firstName, @HiveField(3)@JsonKey(name: 'last_name')  dynamic lastName, @HiveField(4)@JsonKey(name: 'email')  dynamic email, @HiveField(5)@JsonKey(name: 'phone')  String? phone, @HiveField(6)@JsonKey(name: 'address')  dynamic address, @HiveField(7)@JsonKey(name: 'gender')  dynamic gender, @HiveField(8)@JsonKey(name: 'registration_status')  String? registrationStatus, @HiveField(9)@JsonKey(name: 'status')  String? status, @HiveField(10)@JsonKey(name: 'work_status')  bool? workStatus, @HiveField(11)@JsonKey(name: 'profile_image')  String? profileImage, @HiveField(12)@JsonKey(name: 'created_at')  DateTime? createdAt, @HiveField(13)@JsonKey(name: 'updated_at')  DateTime? updatedAt, @HiveField(14)@JsonKey(name: 'rating')  dynamic rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Driver() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phone,_that.address,_that.gender,_that.registrationStatus,_that.status,_that.workStatus,_that.profileImage,_that.createdAt,_that.updatedAt,_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(1)@JsonKey(name: 'id')  int? id, @HiveField(2)@JsonKey(name: 'first_name')  String? firstName, @HiveField(3)@JsonKey(name: 'last_name')  dynamic lastName, @HiveField(4)@JsonKey(name: 'email')  dynamic email, @HiveField(5)@JsonKey(name: 'phone')  String? phone, @HiveField(6)@JsonKey(name: 'address')  dynamic address, @HiveField(7)@JsonKey(name: 'gender')  dynamic gender, @HiveField(8)@JsonKey(name: 'registration_status')  String? registrationStatus, @HiveField(9)@JsonKey(name: 'status')  String? status, @HiveField(10)@JsonKey(name: 'work_status')  bool? workStatus, @HiveField(11)@JsonKey(name: 'profile_image')  String? profileImage, @HiveField(12)@JsonKey(name: 'created_at')  DateTime? createdAt, @HiveField(13)@JsonKey(name: 'updated_at')  DateTime? updatedAt, @HiveField(14)@JsonKey(name: 'rating')  dynamic rating)  $default,) {final _that = this;
switch (_that) {
case _Driver():
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phone,_that.address,_that.gender,_that.registrationStatus,_that.status,_that.workStatus,_that.profileImage,_that.createdAt,_that.updatedAt,_that.rating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(1)@JsonKey(name: 'id')  int? id, @HiveField(2)@JsonKey(name: 'first_name')  String? firstName, @HiveField(3)@JsonKey(name: 'last_name')  dynamic lastName, @HiveField(4)@JsonKey(name: 'email')  dynamic email, @HiveField(5)@JsonKey(name: 'phone')  String? phone, @HiveField(6)@JsonKey(name: 'address')  dynamic address, @HiveField(7)@JsonKey(name: 'gender')  dynamic gender, @HiveField(8)@JsonKey(name: 'registration_status')  String? registrationStatus, @HiveField(9)@JsonKey(name: 'status')  String? status, @HiveField(10)@JsonKey(name: 'work_status')  bool? workStatus, @HiveField(11)@JsonKey(name: 'profile_image')  String? profileImage, @HiveField(12)@JsonKey(name: 'created_at')  DateTime? createdAt, @HiveField(13)@JsonKey(name: 'updated_at')  DateTime? updatedAt, @HiveField(14)@JsonKey(name: 'rating')  dynamic rating)?  $default,) {final _that = this;
switch (_that) {
case _Driver() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phone,_that.address,_that.gender,_that.registrationStatus,_that.status,_that.workStatus,_that.profileImage,_that.createdAt,_that.updatedAt,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Driver implements Driver {
  const _Driver({@HiveField(1)@JsonKey(name: 'id') this.id, @HiveField(2)@JsonKey(name: 'first_name') this.firstName, @HiveField(3)@JsonKey(name: 'last_name') this.lastName, @HiveField(4)@JsonKey(name: 'email') this.email, @HiveField(5)@JsonKey(name: 'phone') this.phone, @HiveField(6)@JsonKey(name: 'address') this.address, @HiveField(7)@JsonKey(name: 'gender') this.gender, @HiveField(8)@JsonKey(name: 'registration_status') this.registrationStatus, @HiveField(9)@JsonKey(name: 'status') this.status, @HiveField(10)@JsonKey(name: 'work_status') this.workStatus, @HiveField(11)@JsonKey(name: 'profile_image') this.profileImage, @HiveField(12)@JsonKey(name: 'created_at') this.createdAt, @HiveField(13)@JsonKey(name: 'updated_at') this.updatedAt, @HiveField(14)@JsonKey(name: 'rating') this.rating});
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Driver&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&const DeepCollectionEquality().equals(other.lastName, lastName)&&const DeepCollectionEquality().equals(other.email, email)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.address, address)&&const DeepCollectionEquality().equals(other.gender, gender)&&(identical(other.registrationStatus, registrationStatus) || other.registrationStatus == registrationStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.workStatus, workStatus) || other.workStatus == workStatus)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.rating, rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,const DeepCollectionEquality().hash(lastName),const DeepCollectionEquality().hash(email),phone,const DeepCollectionEquality().hash(address),const DeepCollectionEquality().hash(gender),registrationStatus,status,workStatus,profileImage,createdAt,updatedAt,const DeepCollectionEquality().hash(rating));

@override
String toString() {
  return 'Driver(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, address: $address, gender: $gender, registrationStatus: $registrationStatus, status: $status, workStatus: $workStatus, profileImage: $profileImage, createdAt: $createdAt, updatedAt: $updatedAt, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$DriverCopyWith(_Driver value, $Res Function(_Driver) _then) = __$DriverCopyWithImpl;
@override @useResult
$Res call({
@HiveField(1)@JsonKey(name: 'id') int? id,@HiveField(2)@JsonKey(name: 'first_name') String? firstName,@HiveField(3)@JsonKey(name: 'last_name') dynamic lastName,@HiveField(4)@JsonKey(name: 'email') dynamic email,@HiveField(5)@JsonKey(name: 'phone') String? phone,@HiveField(6)@JsonKey(name: 'address') dynamic address,@HiveField(7)@JsonKey(name: 'gender') dynamic gender,@HiveField(8)@JsonKey(name: 'registration_status') String? registrationStatus,@HiveField(9)@JsonKey(name: 'status') String? status,@HiveField(10)@JsonKey(name: 'work_status') bool? workStatus,@HiveField(11)@JsonKey(name: 'profile_image') String? profileImage,@HiveField(12)@JsonKey(name: 'created_at') DateTime? createdAt,@HiveField(13)@JsonKey(name: 'updated_at') DateTime? updatedAt,@HiveField(14)@JsonKey(name: 'rating') dynamic rating
});




}
/// @nodoc
class __$DriverCopyWithImpl<$Res>
    implements _$DriverCopyWith<$Res> {
  __$DriverCopyWithImpl(this._self, this._then);

  final _Driver _self;
  final $Res Function(_Driver) _then;

/// Create a copy of Driver
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? phone = freezed,Object? address = freezed,Object? gender = freezed,Object? registrationStatus = freezed,Object? status = freezed,Object? workStatus = freezed,Object? profileImage = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? rating = freezed,}) {
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
as dynamic,
  ));
}


}

// dart format on
