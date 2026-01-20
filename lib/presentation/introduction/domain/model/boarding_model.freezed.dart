// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boarding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BoardingModel {

@JsonKey(name: "status") String get status;@JsonKey(name: "code") int get code;@JsonKey(name: "message") String get message;@JsonKey(name: "payload") List<Boarding> get boarding;@JsonKey(name: "isSuccess") bool get isSuccess;
/// Create a copy of BoardingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoardingModelCopyWith<BoardingModel> get copyWith => _$BoardingModelCopyWithImpl<BoardingModel>(this as BoardingModel, _$identity);

  /// Serializes this BoardingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoardingModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.boarding, boarding)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(boarding),isSuccess);

@override
String toString() {
  return 'BoardingModel(status: $status, code: $code, message: $message, boarding: $boarding, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $BoardingModelCopyWith<$Res>  {
  factory $BoardingModelCopyWith(BoardingModel value, $Res Function(BoardingModel) _then) = _$BoardingModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "code") int code,@JsonKey(name: "message") String message,@JsonKey(name: "payload") List<Boarding> boarding,@JsonKey(name: "isSuccess") bool isSuccess
});




}
/// @nodoc
class _$BoardingModelCopyWithImpl<$Res>
    implements $BoardingModelCopyWith<$Res> {
  _$BoardingModelCopyWithImpl(this._self, this._then);

  final BoardingModel _self;
  final $Res Function(BoardingModel) _then;

/// Create a copy of BoardingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? message = null,Object? boarding = null,Object? isSuccess = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,boarding: null == boarding ? _self.boarding : boarding // ignore: cast_nullable_to_non_nullable
as List<Boarding>,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BoardingModel].
extension BoardingModelPatterns on BoardingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BoardingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BoardingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BoardingModel value)  $default,){
final _that = this;
switch (_that) {
case _BoardingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BoardingModel value)?  $default,){
final _that = this;
switch (_that) {
case _BoardingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "code")  int code, @JsonKey(name: "message")  String message, @JsonKey(name: "payload")  List<Boarding> boarding, @JsonKey(name: "isSuccess")  bool isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BoardingModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.boarding,_that.isSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "code")  int code, @JsonKey(name: "message")  String message, @JsonKey(name: "payload")  List<Boarding> boarding, @JsonKey(name: "isSuccess")  bool isSuccess)  $default,) {final _that = this;
switch (_that) {
case _BoardingModel():
return $default(_that.status,_that.code,_that.message,_that.boarding,_that.isSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "code")  int code, @JsonKey(name: "message")  String message, @JsonKey(name: "payload")  List<Boarding> boarding, @JsonKey(name: "isSuccess")  bool isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _BoardingModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.boarding,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BoardingModel implements BoardingModel {
  const _BoardingModel({@JsonKey(name: "status") required this.status, @JsonKey(name: "code") required this.code, @JsonKey(name: "message") required this.message, @JsonKey(name: "payload") required final  List<Boarding> boarding, @JsonKey(name: "isSuccess") required this.isSuccess}): _boarding = boarding;
  factory _BoardingModel.fromJson(Map<String, dynamic> json) => _$BoardingModelFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "code") final  int code;
@override@JsonKey(name: "message") final  String message;
 final  List<Boarding> _boarding;
@override@JsonKey(name: "payload") List<Boarding> get boarding {
  if (_boarding is EqualUnmodifiableListView) return _boarding;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_boarding);
}

@override@JsonKey(name: "isSuccess") final  bool isSuccess;

/// Create a copy of BoardingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoardingModelCopyWith<_BoardingModel> get copyWith => __$BoardingModelCopyWithImpl<_BoardingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BoardingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BoardingModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._boarding, _boarding)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(_boarding),isSuccess);

@override
String toString() {
  return 'BoardingModel(status: $status, code: $code, message: $message, boarding: $boarding, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$BoardingModelCopyWith<$Res> implements $BoardingModelCopyWith<$Res> {
  factory _$BoardingModelCopyWith(_BoardingModel value, $Res Function(_BoardingModel) _then) = __$BoardingModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "code") int code,@JsonKey(name: "message") String message,@JsonKey(name: "payload") List<Boarding> boarding,@JsonKey(name: "isSuccess") bool isSuccess
});




}
/// @nodoc
class __$BoardingModelCopyWithImpl<$Res>
    implements _$BoardingModelCopyWith<$Res> {
  __$BoardingModelCopyWithImpl(this._self, this._then);

  final _BoardingModel _self;
  final $Res Function(_BoardingModel) _then;

/// Create a copy of BoardingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? code = null,Object? message = null,Object? boarding = null,Object? isSuccess = null,}) {
  return _then(_BoardingModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,boarding: null == boarding ? _self._boarding : boarding // ignore: cast_nullable_to_non_nullable
as List<Boarding>,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Boarding {

@JsonKey(name: "id") int get id;@JsonKey(name: "title") String get title;@JsonKey(name: "description") String get description;@JsonKey(name: "image") String get image;@JsonKey(name: "image_url") String get imageUrl;@JsonKey(name: "app_type") String get appType;@JsonKey(name: "order") int get order;@JsonKey(name: "status") bool get status;@JsonKey(name: "created_at") DateTime get createdAt;@JsonKey(name: "updated_at") DateTime get updatedAt;
/// Create a copy of Boarding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoardingCopyWith<Boarding> get copyWith => _$BoardingCopyWithImpl<Boarding>(this as Boarding, _$identity);

  /// Serializes this Boarding to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Boarding&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.appType, appType) || other.appType == appType)&&(identical(other.order, order) || other.order == order)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,image,imageUrl,appType,order,status,createdAt,updatedAt);

@override
String toString() {
  return 'Boarding(id: $id, title: $title, description: $description, image: $image, imageUrl: $imageUrl, appType: $appType, order: $order, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BoardingCopyWith<$Res>  {
  factory $BoardingCopyWith(Boarding value, $Res Function(Boarding) _then) = _$BoardingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "title") String title,@JsonKey(name: "description") String description,@JsonKey(name: "image") String image,@JsonKey(name: "image_url") String imageUrl,@JsonKey(name: "app_type") String appType,@JsonKey(name: "order") int order,@JsonKey(name: "status") bool status,@JsonKey(name: "created_at") DateTime createdAt,@JsonKey(name: "updated_at") DateTime updatedAt
});




}
/// @nodoc
class _$BoardingCopyWithImpl<$Res>
    implements $BoardingCopyWith<$Res> {
  _$BoardingCopyWithImpl(this._self, this._then);

  final Boarding _self;
  final $Res Function(Boarding) _then;

/// Create a copy of Boarding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? image = null,Object? imageUrl = null,Object? appType = null,Object? order = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,appType: null == appType ? _self.appType : appType // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Boarding].
extension BoardingPatterns on Boarding {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Boarding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Boarding() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Boarding value)  $default,){
final _that = this;
switch (_that) {
case _Boarding():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Boarding value)?  $default,){
final _that = this;
switch (_that) {
case _Boarding() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "title")  String title, @JsonKey(name: "description")  String description, @JsonKey(name: "image")  String image, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "app_type")  String appType, @JsonKey(name: "order")  int order, @JsonKey(name: "status")  bool status, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "updated_at")  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Boarding() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.image,_that.imageUrl,_that.appType,_that.order,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "title")  String title, @JsonKey(name: "description")  String description, @JsonKey(name: "image")  String image, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "app_type")  String appType, @JsonKey(name: "order")  int order, @JsonKey(name: "status")  bool status, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "updated_at")  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Boarding():
return $default(_that.id,_that.title,_that.description,_that.image,_that.imageUrl,_that.appType,_that.order,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "title")  String title, @JsonKey(name: "description")  String description, @JsonKey(name: "image")  String image, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "app_type")  String appType, @JsonKey(name: "order")  int order, @JsonKey(name: "status")  bool status, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "updated_at")  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Boarding() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.image,_that.imageUrl,_that.appType,_that.order,_that.status,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Boarding implements Boarding {
  const _Boarding({@JsonKey(name: "id") required this.id, @JsonKey(name: "title") required this.title, @JsonKey(name: "description") required this.description, @JsonKey(name: "image") required this.image, @JsonKey(name: "image_url") required this.imageUrl, @JsonKey(name: "app_type") required this.appType, @JsonKey(name: "order") required this.order, @JsonKey(name: "status") required this.status, @JsonKey(name: "created_at") required this.createdAt, @JsonKey(name: "updated_at") required this.updatedAt});
  factory _Boarding.fromJson(Map<String, dynamic> json) => _$BoardingFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "title") final  String title;
@override@JsonKey(name: "description") final  String description;
@override@JsonKey(name: "image") final  String image;
@override@JsonKey(name: "image_url") final  String imageUrl;
@override@JsonKey(name: "app_type") final  String appType;
@override@JsonKey(name: "order") final  int order;
@override@JsonKey(name: "status") final  bool status;
@override@JsonKey(name: "created_at") final  DateTime createdAt;
@override@JsonKey(name: "updated_at") final  DateTime updatedAt;

/// Create a copy of Boarding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoardingCopyWith<_Boarding> get copyWith => __$BoardingCopyWithImpl<_Boarding>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BoardingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Boarding&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.appType, appType) || other.appType == appType)&&(identical(other.order, order) || other.order == order)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,image,imageUrl,appType,order,status,createdAt,updatedAt);

@override
String toString() {
  return 'Boarding(id: $id, title: $title, description: $description, image: $image, imageUrl: $imageUrl, appType: $appType, order: $order, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BoardingCopyWith<$Res> implements $BoardingCopyWith<$Res> {
  factory _$BoardingCopyWith(_Boarding value, $Res Function(_Boarding) _then) = __$BoardingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "title") String title,@JsonKey(name: "description") String description,@JsonKey(name: "image") String image,@JsonKey(name: "image_url") String imageUrl,@JsonKey(name: "app_type") String appType,@JsonKey(name: "order") int order,@JsonKey(name: "status") bool status,@JsonKey(name: "created_at") DateTime createdAt,@JsonKey(name: "updated_at") DateTime updatedAt
});




}
/// @nodoc
class __$BoardingCopyWithImpl<$Res>
    implements _$BoardingCopyWith<$Res> {
  __$BoardingCopyWithImpl(this._self, this._then);

  final _Boarding _self;
  final $Res Function(_Boarding) _then;

/// Create a copy of Boarding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? image = null,Object? imageUrl = null,Object? appType = null,Object? order = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Boarding(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,appType: null == appType ? _self.appType : appType // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
