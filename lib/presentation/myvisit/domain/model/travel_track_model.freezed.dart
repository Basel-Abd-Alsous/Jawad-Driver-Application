// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_track_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TravelTrackModel {

@JsonKey(name: "status") String? get status;@JsonKey(name: "code") int? get code;@JsonKey(name: "message") String? get message;@JsonKey(name: "payload") List<Payload>? get payload;@JsonKey(name: "isSuccess") bool? get isSuccess;
/// Create a copy of TravelTrackModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelTrackModelCopyWith<TravelTrackModel> get copyWith => _$TravelTrackModelCopyWithImpl<TravelTrackModel>(this as TravelTrackModel, _$identity);

  /// Serializes this TravelTrackModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelTrackModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.payload, payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(payload),isSuccess);

@override
String toString() {
  return 'TravelTrackModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $TravelTrackModelCopyWith<$Res>  {
  factory $TravelTrackModelCopyWith(TravelTrackModel value, $Res Function(TravelTrackModel) _then) = _$TravelTrackModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "code") int? code,@JsonKey(name: "message") String? message,@JsonKey(name: "payload") List<Payload>? payload,@JsonKey(name: "isSuccess") bool? isSuccess
});




}
/// @nodoc
class _$TravelTrackModelCopyWithImpl<$Res>
    implements $TravelTrackModelCopyWith<$Res> {
  _$TravelTrackModelCopyWithImpl(this._self, this._then);

  final TravelTrackModel _self;
  final $Res Function(TravelTrackModel) _then;

/// Create a copy of TravelTrackModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<Payload>?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelTrackModel].
extension TravelTrackModelPatterns on TravelTrackModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelTrackModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelTrackModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelTrackModel value)  $default,){
final _that = this;
switch (_that) {
case _TravelTrackModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelTrackModel value)?  $default,){
final _that = this;
switch (_that) {
case _TravelTrackModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "code")  int? code, @JsonKey(name: "message")  String? message, @JsonKey(name: "payload")  List<Payload>? payload, @JsonKey(name: "isSuccess")  bool? isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelTrackModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "code")  int? code, @JsonKey(name: "message")  String? message, @JsonKey(name: "payload")  List<Payload>? payload, @JsonKey(name: "isSuccess")  bool? isSuccess)  $default,) {final _that = this;
switch (_that) {
case _TravelTrackModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "code")  int? code, @JsonKey(name: "message")  String? message, @JsonKey(name: "payload")  List<Payload>? payload, @JsonKey(name: "isSuccess")  bool? isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _TravelTrackModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TravelTrackModel implements TravelTrackModel {
  const _TravelTrackModel({@JsonKey(name: "status") this.status, @JsonKey(name: "code") this.code, @JsonKey(name: "message") this.message, @JsonKey(name: "payload") final  List<Payload>? payload, @JsonKey(name: "isSuccess") this.isSuccess}): _payload = payload;
  factory _TravelTrackModel.fromJson(Map<String, dynamic> json) => _$TravelTrackModelFromJson(json);

@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "code") final  int? code;
@override@JsonKey(name: "message") final  String? message;
 final  List<Payload>? _payload;
@override@JsonKey(name: "payload") List<Payload>? get payload {
  final value = _payload;
  if (value == null) return null;
  if (_payload is EqualUnmodifiableListView) return _payload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "isSuccess") final  bool? isSuccess;

/// Create a copy of TravelTrackModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelTrackModelCopyWith<_TravelTrackModel> get copyWith => __$TravelTrackModelCopyWithImpl<_TravelTrackModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TravelTrackModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelTrackModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._payload, _payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(_payload),isSuccess);

@override
String toString() {
  return 'TravelTrackModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$TravelTrackModelCopyWith<$Res> implements $TravelTrackModelCopyWith<$Res> {
  factory _$TravelTrackModelCopyWith(_TravelTrackModel value, $Res Function(_TravelTrackModel) _then) = __$TravelTrackModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "code") int? code,@JsonKey(name: "message") String? message,@JsonKey(name: "payload") List<Payload>? payload,@JsonKey(name: "isSuccess") bool? isSuccess
});




}
/// @nodoc
class __$TravelTrackModelCopyWithImpl<$Res>
    implements _$TravelTrackModelCopyWith<$Res> {
  __$TravelTrackModelCopyWithImpl(this._self, this._then);

  final _TravelTrackModel _self;
  final $Res Function(_TravelTrackModel) _then;

/// Create a copy of TravelTrackModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_TravelTrackModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self._payload : payload // ignore: cast_nullable_to_non_nullable
as List<Payload>?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$Payload {

@JsonKey(name: "latitude") double? get latitude;@JsonKey(name: "longitude") double? get longitude;
/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayloadCopyWith<Payload> get copyWith => _$PayloadCopyWithImpl<Payload>(this as Payload, _$identity);

  /// Serializes this Payload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payload&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'Payload(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $PayloadCopyWith<$Res>  {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) _then) = _$PayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "latitude") double? latitude,@JsonKey(name: "longitude") double? longitude
});




}
/// @nodoc
class _$PayloadCopyWithImpl<$Res>
    implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._self, this._then);

  final Payload _self;
  final $Res Function(Payload) _then;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "latitude")  double? latitude, @JsonKey(name: "longitude")  double? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "latitude")  double? latitude, @JsonKey(name: "longitude")  double? longitude)  $default,) {final _that = this;
switch (_that) {
case _Payload():
return $default(_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "latitude")  double? latitude, @JsonKey(name: "longitude")  double? longitude)?  $default,) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payload implements Payload {
  const _Payload({@JsonKey(name: "latitude") this.latitude, @JsonKey(name: "longitude") this.longitude});
  factory _Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);

@override@JsonKey(name: "latitude") final  double? latitude;
@override@JsonKey(name: "longitude") final  double? longitude;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payload&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'Payload(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$PayloadCopyWith(_Payload value, $Res Function(_Payload) _then) = __$PayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "latitude") double? latitude,@JsonKey(name: "longitude") double? longitude
});




}
/// @nodoc
class __$PayloadCopyWithImpl<$Res>
    implements _$PayloadCopyWith<$Res> {
  __$PayloadCopyWithImpl(this._self, this._then);

  final _Payload _self;
  final $Res Function(_Payload) _then;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_Payload(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
