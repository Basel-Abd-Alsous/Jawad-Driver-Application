// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyDocumentModel {

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'code') int? get code;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'payload') List<MyDocument>? get payload;@JsonKey(name: 'isSuccess') bool? get isSuccess;
/// Create a copy of MyDocumentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyDocumentModelCopyWith<MyDocumentModel> get copyWith => _$MyDocumentModelCopyWithImpl<MyDocumentModel>(this as MyDocumentModel, _$identity);

  /// Serializes this MyDocumentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyDocumentModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.payload, payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(payload),isSuccess);

@override
String toString() {
  return 'MyDocumentModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $MyDocumentModelCopyWith<$Res>  {
  factory $MyDocumentModelCopyWith(MyDocumentModel value, $Res Function(MyDocumentModel) _then) = _$MyDocumentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') List<MyDocument>? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});




}
/// @nodoc
class _$MyDocumentModelCopyWithImpl<$Res>
    implements $MyDocumentModelCopyWith<$Res> {
  _$MyDocumentModelCopyWithImpl(this._self, this._then);

  final MyDocumentModel _self;
  final $Res Function(MyDocumentModel) _then;

/// Create a copy of MyDocumentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<MyDocument>?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyDocumentModel].
extension MyDocumentModelPatterns on MyDocumentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyDocumentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyDocumentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyDocumentModel value)  $default,){
final _that = this;
switch (_that) {
case _MyDocumentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyDocumentModel value)?  $default,){
final _that = this;
switch (_that) {
case _MyDocumentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  List<MyDocument>? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyDocumentModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  List<MyDocument>? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)  $default,) {final _that = this;
switch (_that) {
case _MyDocumentModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  List<MyDocument>? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _MyDocumentModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyDocumentModel implements MyDocumentModel {
  const _MyDocumentModel({@JsonKey(name: 'status') this.status, @JsonKey(name: 'code') this.code, @JsonKey(name: 'message') this.message, @JsonKey(name: 'payload') final  List<MyDocument>? payload, @JsonKey(name: 'isSuccess') this.isSuccess}): _payload = payload;
  factory _MyDocumentModel.fromJson(Map<String, dynamic> json) => _$MyDocumentModelFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'code') final  int? code;
@override@JsonKey(name: 'message') final  String? message;
 final  List<MyDocument>? _payload;
@override@JsonKey(name: 'payload') List<MyDocument>? get payload {
  final value = _payload;
  if (value == null) return null;
  if (_payload is EqualUnmodifiableListView) return _payload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'isSuccess') final  bool? isSuccess;

/// Create a copy of MyDocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyDocumentModelCopyWith<_MyDocumentModel> get copyWith => __$MyDocumentModelCopyWithImpl<_MyDocumentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyDocumentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyDocumentModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._payload, _payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(_payload),isSuccess);

@override
String toString() {
  return 'MyDocumentModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$MyDocumentModelCopyWith<$Res> implements $MyDocumentModelCopyWith<$Res> {
  factory _$MyDocumentModelCopyWith(_MyDocumentModel value, $Res Function(_MyDocumentModel) _then) = __$MyDocumentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') List<MyDocument>? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});




}
/// @nodoc
class __$MyDocumentModelCopyWithImpl<$Res>
    implements _$MyDocumentModelCopyWith<$Res> {
  __$MyDocumentModelCopyWithImpl(this._self, this._then);

  final _MyDocumentModel _self;
  final $Res Function(_MyDocumentModel) _then;

/// Create a copy of MyDocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_MyDocumentModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self._payload : payload // ignore: cast_nullable_to_non_nullable
as List<MyDocument>?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$MyDocument {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'document_type_id') int? get documentTypeId;@JsonKey(name: 'document_type') String? get documentType;@JsonKey(name: 'file_path') String? get filePath;@JsonKey(name: 'status_edit') String? get statusEdit;@JsonKey(name: 'status') int? get status;@JsonKey(name: 'is_required') bool? get isRequired;
/// Create a copy of MyDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyDocumentCopyWith<MyDocument> get copyWith => _$MyDocumentCopyWithImpl<MyDocument>(this as MyDocument, _$identity);

  /// Serializes this MyDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyDocument&&(identical(other.id, id) || other.id == id)&&(identical(other.documentTypeId, documentTypeId) || other.documentTypeId == documentTypeId)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.statusEdit, statusEdit) || other.statusEdit == statusEdit)&&(identical(other.status, status) || other.status == status)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,documentTypeId,documentType,filePath,statusEdit,status,isRequired);

@override
String toString() {
  return 'MyDocument(id: $id, documentTypeId: $documentTypeId, documentType: $documentType, filePath: $filePath, statusEdit: $statusEdit, status: $status, isRequired: $isRequired)';
}


}

/// @nodoc
abstract mixin class $MyDocumentCopyWith<$Res>  {
  factory $MyDocumentCopyWith(MyDocument value, $Res Function(MyDocument) _then) = _$MyDocumentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'document_type_id') int? documentTypeId,@JsonKey(name: 'document_type') String? documentType,@JsonKey(name: 'file_path') String? filePath,@JsonKey(name: 'status_edit') String? statusEdit,@JsonKey(name: 'status') int? status,@JsonKey(name: 'is_required') bool? isRequired
});




}
/// @nodoc
class _$MyDocumentCopyWithImpl<$Res>
    implements $MyDocumentCopyWith<$Res> {
  _$MyDocumentCopyWithImpl(this._self, this._then);

  final MyDocument _self;
  final $Res Function(MyDocument) _then;

/// Create a copy of MyDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? documentTypeId = freezed,Object? documentType = freezed,Object? filePath = freezed,Object? statusEdit = freezed,Object? status = freezed,Object? isRequired = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,documentTypeId: freezed == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as int?,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,statusEdit: freezed == statusEdit ? _self.statusEdit : statusEdit // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyDocument].
extension MyDocumentPatterns on MyDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyDocument value)  $default,){
final _that = this;
switch (_that) {
case _MyDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyDocument value)?  $default,){
final _that = this;
switch (_that) {
case _MyDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'document_type_id')  int? documentTypeId, @JsonKey(name: 'document_type')  String? documentType, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'status_edit')  String? statusEdit, @JsonKey(name: 'status')  int? status, @JsonKey(name: 'is_required')  bool? isRequired)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyDocument() when $default != null:
return $default(_that.id,_that.documentTypeId,_that.documentType,_that.filePath,_that.statusEdit,_that.status,_that.isRequired);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'document_type_id')  int? documentTypeId, @JsonKey(name: 'document_type')  String? documentType, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'status_edit')  String? statusEdit, @JsonKey(name: 'status')  int? status, @JsonKey(name: 'is_required')  bool? isRequired)  $default,) {final _that = this;
switch (_that) {
case _MyDocument():
return $default(_that.id,_that.documentTypeId,_that.documentType,_that.filePath,_that.statusEdit,_that.status,_that.isRequired);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'document_type_id')  int? documentTypeId, @JsonKey(name: 'document_type')  String? documentType, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'status_edit')  String? statusEdit, @JsonKey(name: 'status')  int? status, @JsonKey(name: 'is_required')  bool? isRequired)?  $default,) {final _that = this;
switch (_that) {
case _MyDocument() when $default != null:
return $default(_that.id,_that.documentTypeId,_that.documentType,_that.filePath,_that.statusEdit,_that.status,_that.isRequired);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyDocument implements MyDocument {
  const _MyDocument({@JsonKey(name: 'id') this.id, @JsonKey(name: 'document_type_id') this.documentTypeId, @JsonKey(name: 'document_type') this.documentType, @JsonKey(name: 'file_path') this.filePath, @JsonKey(name: 'status_edit') this.statusEdit, @JsonKey(name: 'status') this.status, @JsonKey(name: 'is_required') this.isRequired});
  factory _MyDocument.fromJson(Map<String, dynamic> json) => _$MyDocumentFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'document_type_id') final  int? documentTypeId;
@override@JsonKey(name: 'document_type') final  String? documentType;
@override@JsonKey(name: 'file_path') final  String? filePath;
@override@JsonKey(name: 'status_edit') final  String? statusEdit;
@override@JsonKey(name: 'status') final  int? status;
@override@JsonKey(name: 'is_required') final  bool? isRequired;

/// Create a copy of MyDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyDocumentCopyWith<_MyDocument> get copyWith => __$MyDocumentCopyWithImpl<_MyDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyDocument&&(identical(other.id, id) || other.id == id)&&(identical(other.documentTypeId, documentTypeId) || other.documentTypeId == documentTypeId)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.statusEdit, statusEdit) || other.statusEdit == statusEdit)&&(identical(other.status, status) || other.status == status)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,documentTypeId,documentType,filePath,statusEdit,status,isRequired);

@override
String toString() {
  return 'MyDocument(id: $id, documentTypeId: $documentTypeId, documentType: $documentType, filePath: $filePath, statusEdit: $statusEdit, status: $status, isRequired: $isRequired)';
}


}

/// @nodoc
abstract mixin class _$MyDocumentCopyWith<$Res> implements $MyDocumentCopyWith<$Res> {
  factory _$MyDocumentCopyWith(_MyDocument value, $Res Function(_MyDocument) _then) = __$MyDocumentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'document_type_id') int? documentTypeId,@JsonKey(name: 'document_type') String? documentType,@JsonKey(name: 'file_path') String? filePath,@JsonKey(name: 'status_edit') String? statusEdit,@JsonKey(name: 'status') int? status,@JsonKey(name: 'is_required') bool? isRequired
});




}
/// @nodoc
class __$MyDocumentCopyWithImpl<$Res>
    implements _$MyDocumentCopyWith<$Res> {
  __$MyDocumentCopyWithImpl(this._self, this._then);

  final _MyDocument _self;
  final $Res Function(_MyDocument) _then;

/// Create a copy of MyDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? documentTypeId = freezed,Object? documentType = freezed,Object? filePath = freezed,Object? statusEdit = freezed,Object? status = freezed,Object? isRequired = freezed,}) {
  return _then(_MyDocument(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,documentTypeId: freezed == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as int?,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,statusEdit: freezed == statusEdit ? _self.statusEdit : statusEdit // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
