// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model_and_color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarModelAndColorModel {

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'code') int? get code;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'payload') Payload? get payload;@JsonKey(name: 'isSuccess') bool? get isSuccess;
/// Create a copy of CarModelAndColorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarModelAndColorModelCopyWith<CarModelAndColorModel> get copyWith => _$CarModelAndColorModelCopyWithImpl<CarModelAndColorModel>(this as CarModelAndColorModel, _$identity);

  /// Serializes this CarModelAndColorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarModelAndColorModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

@override
String toString() {
  return 'CarModelAndColorModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $CarModelAndColorModelCopyWith<$Res>  {
  factory $CarModelAndColorModelCopyWith(CarModelAndColorModel value, $Res Function(CarModelAndColorModel) _then) = _$CarModelAndColorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') Payload? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});


$PayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class _$CarModelAndColorModelCopyWithImpl<$Res>
    implements $CarModelAndColorModelCopyWith<$Res> {
  _$CarModelAndColorModelCopyWithImpl(this._self, this._then);

  final CarModelAndColorModel _self;
  final $Res Function(CarModelAndColorModel) _then;

/// Create a copy of CarModelAndColorModel
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
/// Create a copy of CarModelAndColorModel
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


/// Adds pattern-matching-related methods to [CarModelAndColorModel].
extension CarModelAndColorModelPatterns on CarModelAndColorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CarModelAndColorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CarModelAndColorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CarModelAndColorModel value)  $default,){
final _that = this;
switch (_that) {
case _CarModelAndColorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CarModelAndColorModel value)?  $default,){
final _that = this;
switch (_that) {
case _CarModelAndColorModel() when $default != null:
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
case _CarModelAndColorModel() when $default != null:
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
case _CarModelAndColorModel():
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
case _CarModelAndColorModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CarModelAndColorModel implements CarModelAndColorModel {
  const _CarModelAndColorModel({@JsonKey(name: 'status') this.status, @JsonKey(name: 'code') this.code, @JsonKey(name: 'message') this.message, @JsonKey(name: 'payload') this.payload, @JsonKey(name: 'isSuccess') this.isSuccess});
  factory _CarModelAndColorModel.fromJson(Map<String, dynamic> json) => _$CarModelAndColorModelFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'code') final  int? code;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'payload') final  Payload? payload;
@override@JsonKey(name: 'isSuccess') final  bool? isSuccess;

/// Create a copy of CarModelAndColorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarModelAndColorModelCopyWith<_CarModelAndColorModel> get copyWith => __$CarModelAndColorModelCopyWithImpl<_CarModelAndColorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarModelAndColorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarModelAndColorModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

@override
String toString() {
  return 'CarModelAndColorModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$CarModelAndColorModelCopyWith<$Res> implements $CarModelAndColorModelCopyWith<$Res> {
  factory _$CarModelAndColorModelCopyWith(_CarModelAndColorModel value, $Res Function(_CarModelAndColorModel) _then) = __$CarModelAndColorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') Payload? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});


@override $PayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class __$CarModelAndColorModelCopyWithImpl<$Res>
    implements _$CarModelAndColorModelCopyWith<$Res> {
  __$CarModelAndColorModelCopyWithImpl(this._self, this._then);

  final _CarModelAndColorModel _self;
  final $Res Function(_CarModelAndColorModel) _then;

/// Create a copy of CarModelAndColorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_CarModelAndColorModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Payload?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of CarModelAndColorModel
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

@JsonKey(name: 'types') List<ColorModel>? get types;@JsonKey(name: 'colors') List<ColorModel>? get colors;
/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayloadCopyWith<Payload> get copyWith => _$PayloadCopyWithImpl<Payload>(this as Payload, _$identity);

  /// Serializes this Payload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payload&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.colors, colors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(colors));

@override
String toString() {
  return 'Payload(types: $types, colors: $colors)';
}


}

/// @nodoc
abstract mixin class $PayloadCopyWith<$Res>  {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) _then) = _$PayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'types') List<ColorModel>? types,@JsonKey(name: 'colors') List<ColorModel>? colors
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
@pragma('vm:prefer-inline') @override $Res call({Object? types = freezed,Object? colors = freezed,}) {
  return _then(_self.copyWith(
types: freezed == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<ColorModel>?,colors: freezed == colors ? _self.colors : colors // ignore: cast_nullable_to_non_nullable
as List<ColorModel>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'types')  List<ColorModel>? types, @JsonKey(name: 'colors')  List<ColorModel>? colors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.types,_that.colors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'types')  List<ColorModel>? types, @JsonKey(name: 'colors')  List<ColorModel>? colors)  $default,) {final _that = this;
switch (_that) {
case _Payload():
return $default(_that.types,_that.colors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'types')  List<ColorModel>? types, @JsonKey(name: 'colors')  List<ColorModel>? colors)?  $default,) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.types,_that.colors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payload implements Payload {
  const _Payload({@JsonKey(name: 'types') final  List<ColorModel>? types, @JsonKey(name: 'colors') final  List<ColorModel>? colors}): _types = types,_colors = colors;
  factory _Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);

 final  List<ColorModel>? _types;
@override@JsonKey(name: 'types') List<ColorModel>? get types {
  final value = _types;
  if (value == null) return null;
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ColorModel>? _colors;
@override@JsonKey(name: 'colors') List<ColorModel>? get colors {
  final value = _colors;
  if (value == null) return null;
  if (_colors is EqualUnmodifiableListView) return _colors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payload&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._colors, _colors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_colors));

@override
String toString() {
  return 'Payload(types: $types, colors: $colors)';
}


}

/// @nodoc
abstract mixin class _$PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$PayloadCopyWith(_Payload value, $Res Function(_Payload) _then) = __$PayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'types') List<ColorModel>? types,@JsonKey(name: 'colors') List<ColorModel>? colors
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
@override @pragma('vm:prefer-inline') $Res call({Object? types = freezed,Object? colors = freezed,}) {
  return _then(_Payload(
types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<ColorModel>?,colors: freezed == colors ? _self._colors : colors // ignore: cast_nullable_to_non_nullable
as List<ColorModel>?,
  ));
}


}


/// @nodoc
mixin _$ColorModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'value') String? get value;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'models') List<ColorModel>? get models;
/// Create a copy of ColorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColorModelCopyWith<ColorModel> get copyWith => _$ColorModelCopyWithImpl<ColorModel>(this as ColorModel, _$identity);

  /// Serializes this ColorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.models, models));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,value,createdAt,updatedAt,const DeepCollectionEquality().hash(models));

@override
String toString() {
  return 'ColorModel(id: $id, name: $name, value: $value, createdAt: $createdAt, updatedAt: $updatedAt, models: $models)';
}


}

/// @nodoc
abstract mixin class $ColorModelCopyWith<$Res>  {
  factory $ColorModelCopyWith(ColorModel value, $Res Function(ColorModel) _then) = _$ColorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'value') String? value,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'models') List<ColorModel>? models
});




}
/// @nodoc
class _$ColorModelCopyWithImpl<$Res>
    implements $ColorModelCopyWith<$Res> {
  _$ColorModelCopyWithImpl(this._self, this._then);

  final ColorModel _self;
  final $Res Function(ColorModel) _then;

/// Create a copy of ColorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? value = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? models = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,models: freezed == models ? _self.models : models // ignore: cast_nullable_to_non_nullable
as List<ColorModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ColorModel].
extension ColorModelPatterns on ColorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ColorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ColorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ColorModel value)  $default,){
final _that = this;
switch (_that) {
case _ColorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ColorModel value)?  $default,){
final _that = this;
switch (_that) {
case _ColorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'value')  String? value, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'models')  List<ColorModel>? models)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ColorModel() when $default != null:
return $default(_that.id,_that.name,_that.value,_that.createdAt,_that.updatedAt,_that.models);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'value')  String? value, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'models')  List<ColorModel>? models)  $default,) {final _that = this;
switch (_that) {
case _ColorModel():
return $default(_that.id,_that.name,_that.value,_that.createdAt,_that.updatedAt,_that.models);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'value')  String? value, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'models')  List<ColorModel>? models)?  $default,) {final _that = this;
switch (_that) {
case _ColorModel() when $default != null:
return $default(_that.id,_that.name,_that.value,_that.createdAt,_that.updatedAt,_that.models);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ColorModel implements ColorModel {
  const _ColorModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'value') this.value, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'models') final  List<ColorModel>? models}): _models = models;
  factory _ColorModel.fromJson(Map<String, dynamic> json) => _$ColorModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'value') final  String? value;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
 final  List<ColorModel>? _models;
@override@JsonKey(name: 'models') List<ColorModel>? get models {
  final value = _models;
  if (value == null) return null;
  if (_models is EqualUnmodifiableListView) return _models;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ColorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColorModelCopyWith<_ColorModel> get copyWith => __$ColorModelCopyWithImpl<_ColorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ColorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._models, _models));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,value,createdAt,updatedAt,const DeepCollectionEquality().hash(_models));

@override
String toString() {
  return 'ColorModel(id: $id, name: $name, value: $value, createdAt: $createdAt, updatedAt: $updatedAt, models: $models)';
}


}

/// @nodoc
abstract mixin class _$ColorModelCopyWith<$Res> implements $ColorModelCopyWith<$Res> {
  factory _$ColorModelCopyWith(_ColorModel value, $Res Function(_ColorModel) _then) = __$ColorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'value') String? value,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'models') List<ColorModel>? models
});




}
/// @nodoc
class __$ColorModelCopyWithImpl<$Res>
    implements _$ColorModelCopyWith<$Res> {
  __$ColorModelCopyWithImpl(this._self, this._then);

  final _ColorModel _self;
  final $Res Function(_ColorModel) _then;

/// Create a copy of ColorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? value = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? models = freezed,}) {
  return _then(_ColorModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,models: freezed == models ? _self._models : models // ignore: cast_nullable_to_non_nullable
as List<ColorModel>?,
  ));
}


}

// dart format on
