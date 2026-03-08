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

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'code') int? get code;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'payload') PayloadDocument? get payload;@JsonKey(name: 'isSuccess') bool? get isSuccess;
/// Create a copy of MyDocumentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyDocumentModelCopyWith<MyDocumentModel> get copyWith => _$MyDocumentModelCopyWithImpl<MyDocumentModel>(this as MyDocumentModel, _$identity);

  /// Serializes this MyDocumentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyDocumentModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

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
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') PayloadDocument? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});


$PayloadDocumentCopyWith<$Res>? get payload;

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
as PayloadDocument?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of MyDocumentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayloadDocumentCopyWith<$Res>? get payload {
    if (_self.payload == null) {
    return null;
  }

  return $PayloadDocumentCopyWith<$Res>(_self.payload!, (value) {
    return _then(_self.copyWith(payload: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  PayloadDocument? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  PayloadDocument? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  PayloadDocument? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)?  $default,) {final _that = this;
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
  const _MyDocumentModel({@JsonKey(name: 'status') this.status, @JsonKey(name: 'code') this.code, @JsonKey(name: 'message') this.message, @JsonKey(name: 'payload') this.payload, @JsonKey(name: 'isSuccess') this.isSuccess});
  factory _MyDocumentModel.fromJson(Map<String, dynamic> json) => _$MyDocumentModelFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'code') final  int? code;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'payload') final  PayloadDocument? payload;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyDocumentModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

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
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') PayloadDocument? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});


@override $PayloadDocumentCopyWith<$Res>? get payload;

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
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as PayloadDocument?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of MyDocumentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayloadDocumentCopyWith<$Res>? get payload {
    if (_self.payload == null) {
    return null;
  }

  return $PayloadDocumentCopyWith<$Res>(_self.payload!, (value) {
    return _then(_self.copyWith(payload: value));
  });
}
}


/// @nodoc
mixin _$PayloadDocument {

@JsonKey(name: 'document_types') List<DocumentTypes>? get documentTypes;@JsonKey(name: 'my-documents') List<MyDocument>? get myDocuments;
/// Create a copy of PayloadDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayloadDocumentCopyWith<PayloadDocument> get copyWith => _$PayloadDocumentCopyWithImpl<PayloadDocument>(this as PayloadDocument, _$identity);

  /// Serializes this PayloadDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayloadDocument&&const DeepCollectionEquality().equals(other.documentTypes, documentTypes)&&const DeepCollectionEquality().equals(other.myDocuments, myDocuments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(documentTypes),const DeepCollectionEquality().hash(myDocuments));

@override
String toString() {
  return 'PayloadDocument(documentTypes: $documentTypes, myDocuments: $myDocuments)';
}


}

/// @nodoc
abstract mixin class $PayloadDocumentCopyWith<$Res>  {
  factory $PayloadDocumentCopyWith(PayloadDocument value, $Res Function(PayloadDocument) _then) = _$PayloadDocumentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'document_types') List<DocumentTypes>? documentTypes,@JsonKey(name: 'my-documents') List<MyDocument>? myDocuments
});




}
/// @nodoc
class _$PayloadDocumentCopyWithImpl<$Res>
    implements $PayloadDocumentCopyWith<$Res> {
  _$PayloadDocumentCopyWithImpl(this._self, this._then);

  final PayloadDocument _self;
  final $Res Function(PayloadDocument) _then;

/// Create a copy of PayloadDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentTypes = freezed,Object? myDocuments = freezed,}) {
  return _then(_self.copyWith(
documentTypes: freezed == documentTypes ? _self.documentTypes : documentTypes // ignore: cast_nullable_to_non_nullable
as List<DocumentTypes>?,myDocuments: freezed == myDocuments ? _self.myDocuments : myDocuments // ignore: cast_nullable_to_non_nullable
as List<MyDocument>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PayloadDocument].
extension PayloadDocumentPatterns on PayloadDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayloadDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayloadDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayloadDocument value)  $default,){
final _that = this;
switch (_that) {
case _PayloadDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayloadDocument value)?  $default,){
final _that = this;
switch (_that) {
case _PayloadDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_types')  List<DocumentTypes>? documentTypes, @JsonKey(name: 'my-documents')  List<MyDocument>? myDocuments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayloadDocument() when $default != null:
return $default(_that.documentTypes,_that.myDocuments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_types')  List<DocumentTypes>? documentTypes, @JsonKey(name: 'my-documents')  List<MyDocument>? myDocuments)  $default,) {final _that = this;
switch (_that) {
case _PayloadDocument():
return $default(_that.documentTypes,_that.myDocuments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'document_types')  List<DocumentTypes>? documentTypes, @JsonKey(name: 'my-documents')  List<MyDocument>? myDocuments)?  $default,) {final _that = this;
switch (_that) {
case _PayloadDocument() when $default != null:
return $default(_that.documentTypes,_that.myDocuments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayloadDocument implements PayloadDocument {
  const _PayloadDocument({@JsonKey(name: 'document_types') final  List<DocumentTypes>? documentTypes, @JsonKey(name: 'my-documents') final  List<MyDocument>? myDocuments}): _documentTypes = documentTypes,_myDocuments = myDocuments;
  factory _PayloadDocument.fromJson(Map<String, dynamic> json) => _$PayloadDocumentFromJson(json);

 final  List<DocumentTypes>? _documentTypes;
@override@JsonKey(name: 'document_types') List<DocumentTypes>? get documentTypes {
  final value = _documentTypes;
  if (value == null) return null;
  if (_documentTypes is EqualUnmodifiableListView) return _documentTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<MyDocument>? _myDocuments;
@override@JsonKey(name: 'my-documents') List<MyDocument>? get myDocuments {
  final value = _myDocuments;
  if (value == null) return null;
  if (_myDocuments is EqualUnmodifiableListView) return _myDocuments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PayloadDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayloadDocumentCopyWith<_PayloadDocument> get copyWith => __$PayloadDocumentCopyWithImpl<_PayloadDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayloadDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayloadDocument&&const DeepCollectionEquality().equals(other._documentTypes, _documentTypes)&&const DeepCollectionEquality().equals(other._myDocuments, _myDocuments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_documentTypes),const DeepCollectionEquality().hash(_myDocuments));

@override
String toString() {
  return 'PayloadDocument(documentTypes: $documentTypes, myDocuments: $myDocuments)';
}


}

/// @nodoc
abstract mixin class _$PayloadDocumentCopyWith<$Res> implements $PayloadDocumentCopyWith<$Res> {
  factory _$PayloadDocumentCopyWith(_PayloadDocument value, $Res Function(_PayloadDocument) _then) = __$PayloadDocumentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'document_types') List<DocumentTypes>? documentTypes,@JsonKey(name: 'my-documents') List<MyDocument>? myDocuments
});




}
/// @nodoc
class __$PayloadDocumentCopyWithImpl<$Res>
    implements _$PayloadDocumentCopyWith<$Res> {
  __$PayloadDocumentCopyWithImpl(this._self, this._then);

  final _PayloadDocument _self;
  final $Res Function(_PayloadDocument) _then;

/// Create a copy of PayloadDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentTypes = freezed,Object? myDocuments = freezed,}) {
  return _then(_PayloadDocument(
documentTypes: freezed == documentTypes ? _self._documentTypes : documentTypes // ignore: cast_nullable_to_non_nullable
as List<DocumentTypes>?,myDocuments: freezed == myDocuments ? _self._myDocuments : myDocuments // ignore: cast_nullable_to_non_nullable
as List<MyDocument>?,
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


/// @nodoc
mixin _$DocumentTypes {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'is_required') bool? get isRequired; String? get path;
/// Create a copy of DocumentTypes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentTypesCopyWith<DocumentTypes> get copyWith => _$DocumentTypesCopyWithImpl<DocumentTypes>(this as DocumentTypes, _$identity);

  /// Serializes this DocumentTypes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentTypes&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isRequired,path);

@override
String toString() {
  return 'DocumentTypes(id: $id, name: $name, isRequired: $isRequired, path: $path)';
}


}

/// @nodoc
abstract mixin class $DocumentTypesCopyWith<$Res>  {
  factory $DocumentTypesCopyWith(DocumentTypes value, $Res Function(DocumentTypes) _then) = _$DocumentTypesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'is_required') bool? isRequired, String? path
});




}
/// @nodoc
class _$DocumentTypesCopyWithImpl<$Res>
    implements $DocumentTypesCopyWith<$Res> {
  _$DocumentTypesCopyWithImpl(this._self, this._then);

  final DocumentTypes _self;
  final $Res Function(DocumentTypes) _then;

/// Create a copy of DocumentTypes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? isRequired = freezed,Object? path = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentTypes].
extension DocumentTypesPatterns on DocumentTypes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentTypes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentTypes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentTypes value)  $default,){
final _that = this;
switch (_that) {
case _DocumentTypes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentTypes value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentTypes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'is_required')  bool? isRequired,  String? path)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentTypes() when $default != null:
return $default(_that.id,_that.name,_that.isRequired,_that.path);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'is_required')  bool? isRequired,  String? path)  $default,) {final _that = this;
switch (_that) {
case _DocumentTypes():
return $default(_that.id,_that.name,_that.isRequired,_that.path);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'is_required')  bool? isRequired,  String? path)?  $default,) {final _that = this;
switch (_that) {
case _DocumentTypes() when $default != null:
return $default(_that.id,_that.name,_that.isRequired,_that.path);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentTypes implements DocumentTypes {
  const _DocumentTypes({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'is_required') this.isRequired, this.path});
  factory _DocumentTypes.fromJson(Map<String, dynamic> json) => _$DocumentTypesFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'is_required') final  bool? isRequired;
@override final  String? path;

/// Create a copy of DocumentTypes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentTypesCopyWith<_DocumentTypes> get copyWith => __$DocumentTypesCopyWithImpl<_DocumentTypes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentTypesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentTypes&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isRequired,path);

@override
String toString() {
  return 'DocumentTypes(id: $id, name: $name, isRequired: $isRequired, path: $path)';
}


}

/// @nodoc
abstract mixin class _$DocumentTypesCopyWith<$Res> implements $DocumentTypesCopyWith<$Res> {
  factory _$DocumentTypesCopyWith(_DocumentTypes value, $Res Function(_DocumentTypes) _then) = __$DocumentTypesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'is_required') bool? isRequired, String? path
});




}
/// @nodoc
class __$DocumentTypesCopyWithImpl<$Res>
    implements _$DocumentTypesCopyWith<$Res> {
  __$DocumentTypesCopyWithImpl(this._self, this._then);

  final _DocumentTypes _self;
  final $Res Function(_DocumentTypes) _then;

/// Create a copy of DocumentTypes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? isRequired = freezed,Object? path = freezed,}) {
  return _then(_DocumentTypes(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
