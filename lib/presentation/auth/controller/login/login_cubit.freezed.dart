// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadingLogin value)?  loadingLogin,TResult Function( _LoadedLogin value)?  loadedLogin,TResult Function( _ErrorLogin value)?  errorLogin,TResult Function( _LoadingRegisterStatus value)?  loadingRegisterStatus,TResult Function( _LoadedRegisterStatus value)?  loadedRegisterStatus,TResult Function( _ErrorRegisterStatus value)?  errorRegisterStatus,TResult Function( _LoadingDocumentStatus value)?  loadingDocumentStatus,TResult Function( _LoadedDocumentStatus value)?  loadedDocumentStatus,TResult Function( _ErrorDocumentStatus value)?  errorDocumentStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingLogin() when loadingLogin != null:
return loadingLogin(_that);case _LoadedLogin() when loadedLogin != null:
return loadedLogin(_that);case _ErrorLogin() when errorLogin != null:
return errorLogin(_that);case _LoadingRegisterStatus() when loadingRegisterStatus != null:
return loadingRegisterStatus(_that);case _LoadedRegisterStatus() when loadedRegisterStatus != null:
return loadedRegisterStatus(_that);case _ErrorRegisterStatus() when errorRegisterStatus != null:
return errorRegisterStatus(_that);case _LoadingDocumentStatus() when loadingDocumentStatus != null:
return loadingDocumentStatus(_that);case _LoadedDocumentStatus() when loadedDocumentStatus != null:
return loadedDocumentStatus(_that);case _ErrorDocumentStatus() when errorDocumentStatus != null:
return errorDocumentStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadingLogin value)  loadingLogin,required TResult Function( _LoadedLogin value)  loadedLogin,required TResult Function( _ErrorLogin value)  errorLogin,required TResult Function( _LoadingRegisterStatus value)  loadingRegisterStatus,required TResult Function( _LoadedRegisterStatus value)  loadedRegisterStatus,required TResult Function( _ErrorRegisterStatus value)  errorRegisterStatus,required TResult Function( _LoadingDocumentStatus value)  loadingDocumentStatus,required TResult Function( _LoadedDocumentStatus value)  loadedDocumentStatus,required TResult Function( _ErrorDocumentStatus value)  errorDocumentStatus,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadingLogin():
return loadingLogin(_that);case _LoadedLogin():
return loadedLogin(_that);case _ErrorLogin():
return errorLogin(_that);case _LoadingRegisterStatus():
return loadingRegisterStatus(_that);case _LoadedRegisterStatus():
return loadedRegisterStatus(_that);case _ErrorRegisterStatus():
return errorRegisterStatus(_that);case _LoadingDocumentStatus():
return loadingDocumentStatus(_that);case _LoadedDocumentStatus():
return loadedDocumentStatus(_that);case _ErrorDocumentStatus():
return errorDocumentStatus(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadingLogin value)?  loadingLogin,TResult? Function( _LoadedLogin value)?  loadedLogin,TResult? Function( _ErrorLogin value)?  errorLogin,TResult? Function( _LoadingRegisterStatus value)?  loadingRegisterStatus,TResult? Function( _LoadedRegisterStatus value)?  loadedRegisterStatus,TResult? Function( _ErrorRegisterStatus value)?  errorRegisterStatus,TResult? Function( _LoadingDocumentStatus value)?  loadingDocumentStatus,TResult? Function( _LoadedDocumentStatus value)?  loadedDocumentStatus,TResult? Function( _ErrorDocumentStatus value)?  errorDocumentStatus,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingLogin() when loadingLogin != null:
return loadingLogin(_that);case _LoadedLogin() when loadedLogin != null:
return loadedLogin(_that);case _ErrorLogin() when errorLogin != null:
return errorLogin(_that);case _LoadingRegisterStatus() when loadingRegisterStatus != null:
return loadingRegisterStatus(_that);case _LoadedRegisterStatus() when loadedRegisterStatus != null:
return loadedRegisterStatus(_that);case _ErrorRegisterStatus() when errorRegisterStatus != null:
return errorRegisterStatus(_that);case _LoadingDocumentStatus() when loadingDocumentStatus != null:
return loadingDocumentStatus(_that);case _LoadedDocumentStatus() when loadedDocumentStatus != null:
return loadedDocumentStatus(_that);case _ErrorDocumentStatus() when errorDocumentStatus != null:
return errorDocumentStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingLogin,TResult Function( Map<String, dynamic> data)?  loadedLogin,TResult Function( String message)?  errorLogin,TResult Function()?  loadingRegisterStatus,TResult Function( RegisterStatusModel registerStatusModel)?  loadedRegisterStatus,TResult Function( String message)?  errorRegisterStatus,TResult Function()?  loadingDocumentStatus,TResult Function( DocumentStatusModel documentStatusModel)?  loadedDocumentStatus,TResult Function( String message)?  errorDocumentStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingLogin() when loadingLogin != null:
return loadingLogin();case _LoadedLogin() when loadedLogin != null:
return loadedLogin(_that.data);case _ErrorLogin() when errorLogin != null:
return errorLogin(_that.message);case _LoadingRegisterStatus() when loadingRegisterStatus != null:
return loadingRegisterStatus();case _LoadedRegisterStatus() when loadedRegisterStatus != null:
return loadedRegisterStatus(_that.registerStatusModel);case _ErrorRegisterStatus() when errorRegisterStatus != null:
return errorRegisterStatus(_that.message);case _LoadingDocumentStatus() when loadingDocumentStatus != null:
return loadingDocumentStatus();case _LoadedDocumentStatus() when loadedDocumentStatus != null:
return loadedDocumentStatus(_that.documentStatusModel);case _ErrorDocumentStatus() when errorDocumentStatus != null:
return errorDocumentStatus(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingLogin,required TResult Function( Map<String, dynamic> data)  loadedLogin,required TResult Function( String message)  errorLogin,required TResult Function()  loadingRegisterStatus,required TResult Function( RegisterStatusModel registerStatusModel)  loadedRegisterStatus,required TResult Function( String message)  errorRegisterStatus,required TResult Function()  loadingDocumentStatus,required TResult Function( DocumentStatusModel documentStatusModel)  loadedDocumentStatus,required TResult Function( String message)  errorDocumentStatus,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadingLogin():
return loadingLogin();case _LoadedLogin():
return loadedLogin(_that.data);case _ErrorLogin():
return errorLogin(_that.message);case _LoadingRegisterStatus():
return loadingRegisterStatus();case _LoadedRegisterStatus():
return loadedRegisterStatus(_that.registerStatusModel);case _ErrorRegisterStatus():
return errorRegisterStatus(_that.message);case _LoadingDocumentStatus():
return loadingDocumentStatus();case _LoadedDocumentStatus():
return loadedDocumentStatus(_that.documentStatusModel);case _ErrorDocumentStatus():
return errorDocumentStatus(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingLogin,TResult? Function( Map<String, dynamic> data)?  loadedLogin,TResult? Function( String message)?  errorLogin,TResult? Function()?  loadingRegisterStatus,TResult? Function( RegisterStatusModel registerStatusModel)?  loadedRegisterStatus,TResult? Function( String message)?  errorRegisterStatus,TResult? Function()?  loadingDocumentStatus,TResult? Function( DocumentStatusModel documentStatusModel)?  loadedDocumentStatus,TResult? Function( String message)?  errorDocumentStatus,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingLogin() when loadingLogin != null:
return loadingLogin();case _LoadedLogin() when loadedLogin != null:
return loadedLogin(_that.data);case _ErrorLogin() when errorLogin != null:
return errorLogin(_that.message);case _LoadingRegisterStatus() when loadingRegisterStatus != null:
return loadingRegisterStatus();case _LoadedRegisterStatus() when loadedRegisterStatus != null:
return loadedRegisterStatus(_that.registerStatusModel);case _ErrorRegisterStatus() when errorRegisterStatus != null:
return errorRegisterStatus(_that.message);case _LoadingDocumentStatus() when loadingDocumentStatus != null:
return loadingDocumentStatus();case _LoadedDocumentStatus() when loadedDocumentStatus != null:
return loadedDocumentStatus(_that.documentStatusModel);case _ErrorDocumentStatus() when errorDocumentStatus != null:
return errorDocumentStatus(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements LoginState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.initial()';
}


}




/// @nodoc


class _LoadingLogin implements LoginState {
  const _LoadingLogin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingLogin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loadingLogin()';
}


}




/// @nodoc


class _LoadedLogin implements LoginState {
  const _LoadedLogin(final  Map<String, dynamic> data): _data = data;
  

 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedLoginCopyWith<_LoadedLogin> get copyWith => __$LoadedLoginCopyWithImpl<_LoadedLogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedLogin&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'LoginState.loadedLogin(data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoadedLoginCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoadedLoginCopyWith(_LoadedLogin value, $Res Function(_LoadedLogin) _then) = __$LoadedLoginCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class __$LoadedLoginCopyWithImpl<$Res>
    implements _$LoadedLoginCopyWith<$Res> {
  __$LoadedLoginCopyWithImpl(this._self, this._then);

  final _LoadedLogin _self;
  final $Res Function(_LoadedLogin) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_LoadedLogin(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _ErrorLogin implements LoginState {
  const _ErrorLogin(this.message);
  

 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorLoginCopyWith<_ErrorLogin> get copyWith => __$ErrorLoginCopyWithImpl<_ErrorLogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorLogin&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginState.errorLogin(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorLoginCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$ErrorLoginCopyWith(_ErrorLogin value, $Res Function(_ErrorLogin) _then) = __$ErrorLoginCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorLoginCopyWithImpl<$Res>
    implements _$ErrorLoginCopyWith<$Res> {
  __$ErrorLoginCopyWithImpl(this._self, this._then);

  final _ErrorLogin _self;
  final $Res Function(_ErrorLogin) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorLogin(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadingRegisterStatus implements LoginState {
  const _LoadingRegisterStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingRegisterStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loadingRegisterStatus()';
}


}




/// @nodoc


class _LoadedRegisterStatus implements LoginState {
  const _LoadedRegisterStatus(this.registerStatusModel);
  

 final  RegisterStatusModel registerStatusModel;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedRegisterStatusCopyWith<_LoadedRegisterStatus> get copyWith => __$LoadedRegisterStatusCopyWithImpl<_LoadedRegisterStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedRegisterStatus&&(identical(other.registerStatusModel, registerStatusModel) || other.registerStatusModel == registerStatusModel));
}


@override
int get hashCode => Object.hash(runtimeType,registerStatusModel);

@override
String toString() {
  return 'LoginState.loadedRegisterStatus(registerStatusModel: $registerStatusModel)';
}


}

/// @nodoc
abstract mixin class _$LoadedRegisterStatusCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoadedRegisterStatusCopyWith(_LoadedRegisterStatus value, $Res Function(_LoadedRegisterStatus) _then) = __$LoadedRegisterStatusCopyWithImpl;
@useResult
$Res call({
 RegisterStatusModel registerStatusModel
});


$RegisterStatusModelCopyWith<$Res> get registerStatusModel;

}
/// @nodoc
class __$LoadedRegisterStatusCopyWithImpl<$Res>
    implements _$LoadedRegisterStatusCopyWith<$Res> {
  __$LoadedRegisterStatusCopyWithImpl(this._self, this._then);

  final _LoadedRegisterStatus _self;
  final $Res Function(_LoadedRegisterStatus) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? registerStatusModel = null,}) {
  return _then(_LoadedRegisterStatus(
null == registerStatusModel ? _self.registerStatusModel : registerStatusModel // ignore: cast_nullable_to_non_nullable
as RegisterStatusModel,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterStatusModelCopyWith<$Res> get registerStatusModel {
  
  return $RegisterStatusModelCopyWith<$Res>(_self.registerStatusModel, (value) {
    return _then(_self.copyWith(registerStatusModel: value));
  });
}
}

/// @nodoc


class _ErrorRegisterStatus implements LoginState {
  const _ErrorRegisterStatus(this.message);
  

 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorRegisterStatusCopyWith<_ErrorRegisterStatus> get copyWith => __$ErrorRegisterStatusCopyWithImpl<_ErrorRegisterStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorRegisterStatus&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginState.errorRegisterStatus(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorRegisterStatusCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$ErrorRegisterStatusCopyWith(_ErrorRegisterStatus value, $Res Function(_ErrorRegisterStatus) _then) = __$ErrorRegisterStatusCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorRegisterStatusCopyWithImpl<$Res>
    implements _$ErrorRegisterStatusCopyWith<$Res> {
  __$ErrorRegisterStatusCopyWithImpl(this._self, this._then);

  final _ErrorRegisterStatus _self;
  final $Res Function(_ErrorRegisterStatus) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorRegisterStatus(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadingDocumentStatus implements LoginState {
  const _LoadingDocumentStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingDocumentStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loadingDocumentStatus()';
}


}




/// @nodoc


class _LoadedDocumentStatus implements LoginState {
  const _LoadedDocumentStatus(this.documentStatusModel);
  

 final  DocumentStatusModel documentStatusModel;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedDocumentStatusCopyWith<_LoadedDocumentStatus> get copyWith => __$LoadedDocumentStatusCopyWithImpl<_LoadedDocumentStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedDocumentStatus&&(identical(other.documentStatusModel, documentStatusModel) || other.documentStatusModel == documentStatusModel));
}


@override
int get hashCode => Object.hash(runtimeType,documentStatusModel);

@override
String toString() {
  return 'LoginState.loadedDocumentStatus(documentStatusModel: $documentStatusModel)';
}


}

/// @nodoc
abstract mixin class _$LoadedDocumentStatusCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoadedDocumentStatusCopyWith(_LoadedDocumentStatus value, $Res Function(_LoadedDocumentStatus) _then) = __$LoadedDocumentStatusCopyWithImpl;
@useResult
$Res call({
 DocumentStatusModel documentStatusModel
});


$DocumentStatusModelCopyWith<$Res> get documentStatusModel;

}
/// @nodoc
class __$LoadedDocumentStatusCopyWithImpl<$Res>
    implements _$LoadedDocumentStatusCopyWith<$Res> {
  __$LoadedDocumentStatusCopyWithImpl(this._self, this._then);

  final _LoadedDocumentStatus _self;
  final $Res Function(_LoadedDocumentStatus) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? documentStatusModel = null,}) {
  return _then(_LoadedDocumentStatus(
null == documentStatusModel ? _self.documentStatusModel : documentStatusModel // ignore: cast_nullable_to_non_nullable
as DocumentStatusModel,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocumentStatusModelCopyWith<$Res> get documentStatusModel {
  
  return $DocumentStatusModelCopyWith<$Res>(_self.documentStatusModel, (value) {
    return _then(_self.copyWith(documentStatusModel: value));
  });
}
}

/// @nodoc


class _ErrorDocumentStatus implements LoginState {
  const _ErrorDocumentStatus(this.message);
  

 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorDocumentStatusCopyWith<_ErrorDocumentStatus> get copyWith => __$ErrorDocumentStatusCopyWithImpl<_ErrorDocumentStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorDocumentStatus&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginState.errorDocumentStatus(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorDocumentStatusCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$ErrorDocumentStatusCopyWith(_ErrorDocumentStatus value, $Res Function(_ErrorDocumentStatus) _then) = __$ErrorDocumentStatusCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorDocumentStatusCopyWithImpl<$Res>
    implements _$ErrorDocumentStatusCopyWith<$Res> {
  __$ErrorDocumentStatusCopyWithImpl(this._self, this._then);

  final _ErrorDocumentStatus _self;
  final $Res Function(_ErrorDocumentStatus) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorDocumentStatus(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
