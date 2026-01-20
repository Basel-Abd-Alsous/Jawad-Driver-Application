// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgetState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgetState()';
}


}

/// @nodoc
class $ForgetStateCopyWith<$Res>  {
$ForgetStateCopyWith(ForgetState _, $Res Function(ForgetState) __);
}


/// Adds pattern-matching-related methods to [ForgetState].
extension ForgetStatePatterns on ForgetState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadingForget value)?  loadingForget,TResult Function( _LoadedForget value)?  loadedForget,TResult Function( _ErrorForget value)?  errorForget,TResult Function( _LoadingVerifyForget value)?  loadingVerifyForget,TResult Function( _LoadedVerifyForget value)?  loadedVerifyForget,TResult Function( _ErrorVerifyForget value)?  errorVerifyForget,TResult Function( _LoadingNewPassword value)?  loadingNewPassword,TResult Function( _LoadedNewPassword value)?  loadedNewPassword,TResult Function( _ErrorNewPassword value)?  errorNewPassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingForget() when loadingForget != null:
return loadingForget(_that);case _LoadedForget() when loadedForget != null:
return loadedForget(_that);case _ErrorForget() when errorForget != null:
return errorForget(_that);case _LoadingVerifyForget() when loadingVerifyForget != null:
return loadingVerifyForget(_that);case _LoadedVerifyForget() when loadedVerifyForget != null:
return loadedVerifyForget(_that);case _ErrorVerifyForget() when errorVerifyForget != null:
return errorVerifyForget(_that);case _LoadingNewPassword() when loadingNewPassword != null:
return loadingNewPassword(_that);case _LoadedNewPassword() when loadedNewPassword != null:
return loadedNewPassword(_that);case _ErrorNewPassword() when errorNewPassword != null:
return errorNewPassword(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadingForget value)  loadingForget,required TResult Function( _LoadedForget value)  loadedForget,required TResult Function( _ErrorForget value)  errorForget,required TResult Function( _LoadingVerifyForget value)  loadingVerifyForget,required TResult Function( _LoadedVerifyForget value)  loadedVerifyForget,required TResult Function( _ErrorVerifyForget value)  errorVerifyForget,required TResult Function( _LoadingNewPassword value)  loadingNewPassword,required TResult Function( _LoadedNewPassword value)  loadedNewPassword,required TResult Function( _ErrorNewPassword value)  errorNewPassword,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadingForget():
return loadingForget(_that);case _LoadedForget():
return loadedForget(_that);case _ErrorForget():
return errorForget(_that);case _LoadingVerifyForget():
return loadingVerifyForget(_that);case _LoadedVerifyForget():
return loadedVerifyForget(_that);case _ErrorVerifyForget():
return errorVerifyForget(_that);case _LoadingNewPassword():
return loadingNewPassword(_that);case _LoadedNewPassword():
return loadedNewPassword(_that);case _ErrorNewPassword():
return errorNewPassword(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadingForget value)?  loadingForget,TResult? Function( _LoadedForget value)?  loadedForget,TResult? Function( _ErrorForget value)?  errorForget,TResult? Function( _LoadingVerifyForget value)?  loadingVerifyForget,TResult? Function( _LoadedVerifyForget value)?  loadedVerifyForget,TResult? Function( _ErrorVerifyForget value)?  errorVerifyForget,TResult? Function( _LoadingNewPassword value)?  loadingNewPassword,TResult? Function( _LoadedNewPassword value)?  loadedNewPassword,TResult? Function( _ErrorNewPassword value)?  errorNewPassword,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingForget() when loadingForget != null:
return loadingForget(_that);case _LoadedForget() when loadedForget != null:
return loadedForget(_that);case _ErrorForget() when errorForget != null:
return errorForget(_that);case _LoadingVerifyForget() when loadingVerifyForget != null:
return loadingVerifyForget(_that);case _LoadedVerifyForget() when loadedVerifyForget != null:
return loadedVerifyForget(_that);case _ErrorVerifyForget() when errorVerifyForget != null:
return errorVerifyForget(_that);case _LoadingNewPassword() when loadingNewPassword != null:
return loadingNewPassword(_that);case _LoadedNewPassword() when loadedNewPassword != null:
return loadedNewPassword(_that);case _ErrorNewPassword() when errorNewPassword != null:
return errorNewPassword(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingForget,TResult Function()?  loadedForget,TResult Function( String message)?  errorForget,TResult Function()?  loadingVerifyForget,TResult Function()?  loadedVerifyForget,TResult Function( String message)?  errorVerifyForget,TResult Function()?  loadingNewPassword,TResult Function()?  loadedNewPassword,TResult Function( String message)?  errorNewPassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingForget() when loadingForget != null:
return loadingForget();case _LoadedForget() when loadedForget != null:
return loadedForget();case _ErrorForget() when errorForget != null:
return errorForget(_that.message);case _LoadingVerifyForget() when loadingVerifyForget != null:
return loadingVerifyForget();case _LoadedVerifyForget() when loadedVerifyForget != null:
return loadedVerifyForget();case _ErrorVerifyForget() when errorVerifyForget != null:
return errorVerifyForget(_that.message);case _LoadingNewPassword() when loadingNewPassword != null:
return loadingNewPassword();case _LoadedNewPassword() when loadedNewPassword != null:
return loadedNewPassword();case _ErrorNewPassword() when errorNewPassword != null:
return errorNewPassword(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingForget,required TResult Function()  loadedForget,required TResult Function( String message)  errorForget,required TResult Function()  loadingVerifyForget,required TResult Function()  loadedVerifyForget,required TResult Function( String message)  errorVerifyForget,required TResult Function()  loadingNewPassword,required TResult Function()  loadedNewPassword,required TResult Function( String message)  errorNewPassword,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadingForget():
return loadingForget();case _LoadedForget():
return loadedForget();case _ErrorForget():
return errorForget(_that.message);case _LoadingVerifyForget():
return loadingVerifyForget();case _LoadedVerifyForget():
return loadedVerifyForget();case _ErrorVerifyForget():
return errorVerifyForget(_that.message);case _LoadingNewPassword():
return loadingNewPassword();case _LoadedNewPassword():
return loadedNewPassword();case _ErrorNewPassword():
return errorNewPassword(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingForget,TResult? Function()?  loadedForget,TResult? Function( String message)?  errorForget,TResult? Function()?  loadingVerifyForget,TResult? Function()?  loadedVerifyForget,TResult? Function( String message)?  errorVerifyForget,TResult? Function()?  loadingNewPassword,TResult? Function()?  loadedNewPassword,TResult? Function( String message)?  errorNewPassword,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingForget() when loadingForget != null:
return loadingForget();case _LoadedForget() when loadedForget != null:
return loadedForget();case _ErrorForget() when errorForget != null:
return errorForget(_that.message);case _LoadingVerifyForget() when loadingVerifyForget != null:
return loadingVerifyForget();case _LoadedVerifyForget() when loadedVerifyForget != null:
return loadedVerifyForget();case _ErrorVerifyForget() when errorVerifyForget != null:
return errorVerifyForget(_that.message);case _LoadingNewPassword() when loadingNewPassword != null:
return loadingNewPassword();case _LoadedNewPassword() when loadedNewPassword != null:
return loadedNewPassword();case _ErrorNewPassword() when errorNewPassword != null:
return errorNewPassword(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ForgetState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgetState.initial()';
}


}




/// @nodoc


class _LoadingForget implements ForgetState {
  const _LoadingForget();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingForget);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgetState.loadingForget()';
}


}




/// @nodoc


class _LoadedForget implements ForgetState {
  const _LoadedForget();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedForget);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgetState.loadedForget()';
}


}




/// @nodoc


class _ErrorForget implements ForgetState {
  const _ErrorForget(this.message);
  

 final  String message;

/// Create a copy of ForgetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorForgetCopyWith<_ErrorForget> get copyWith => __$ErrorForgetCopyWithImpl<_ErrorForget>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorForget&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ForgetState.errorForget(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorForgetCopyWith<$Res> implements $ForgetStateCopyWith<$Res> {
  factory _$ErrorForgetCopyWith(_ErrorForget value, $Res Function(_ErrorForget) _then) = __$ErrorForgetCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorForgetCopyWithImpl<$Res>
    implements _$ErrorForgetCopyWith<$Res> {
  __$ErrorForgetCopyWithImpl(this._self, this._then);

  final _ErrorForget _self;
  final $Res Function(_ErrorForget) _then;

/// Create a copy of ForgetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorForget(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadingVerifyForget implements ForgetState {
  const _LoadingVerifyForget();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingVerifyForget);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgetState.loadingVerifyForget()';
}


}




/// @nodoc


class _LoadedVerifyForget implements ForgetState {
  const _LoadedVerifyForget();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedVerifyForget);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgetState.loadedVerifyForget()';
}


}




/// @nodoc


class _ErrorVerifyForget implements ForgetState {
  const _ErrorVerifyForget(this.message);
  

 final  String message;

/// Create a copy of ForgetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorVerifyForgetCopyWith<_ErrorVerifyForget> get copyWith => __$ErrorVerifyForgetCopyWithImpl<_ErrorVerifyForget>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorVerifyForget&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ForgetState.errorVerifyForget(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorVerifyForgetCopyWith<$Res> implements $ForgetStateCopyWith<$Res> {
  factory _$ErrorVerifyForgetCopyWith(_ErrorVerifyForget value, $Res Function(_ErrorVerifyForget) _then) = __$ErrorVerifyForgetCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorVerifyForgetCopyWithImpl<$Res>
    implements _$ErrorVerifyForgetCopyWith<$Res> {
  __$ErrorVerifyForgetCopyWithImpl(this._self, this._then);

  final _ErrorVerifyForget _self;
  final $Res Function(_ErrorVerifyForget) _then;

/// Create a copy of ForgetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorVerifyForget(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadingNewPassword implements ForgetState {
  const _LoadingNewPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingNewPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgetState.loadingNewPassword()';
}


}




/// @nodoc


class _LoadedNewPassword implements ForgetState {
  const _LoadedNewPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedNewPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgetState.loadedNewPassword()';
}


}




/// @nodoc


class _ErrorNewPassword implements ForgetState {
  const _ErrorNewPassword(this.message);
  

 final  String message;

/// Create a copy of ForgetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorNewPasswordCopyWith<_ErrorNewPassword> get copyWith => __$ErrorNewPasswordCopyWithImpl<_ErrorNewPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorNewPassword&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ForgetState.errorNewPassword(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorNewPasswordCopyWith<$Res> implements $ForgetStateCopyWith<$Res> {
  factory _$ErrorNewPasswordCopyWith(_ErrorNewPassword value, $Res Function(_ErrorNewPassword) _then) = __$ErrorNewPasswordCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorNewPasswordCopyWithImpl<$Res>
    implements _$ErrorNewPasswordCopyWith<$Res> {
  __$ErrorNewPasswordCopyWithImpl(this._self, this._then);

  final _ErrorNewPassword _self;
  final $Res Function(_ErrorNewPassword) _then;

/// Create a copy of ForgetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorNewPassword(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
