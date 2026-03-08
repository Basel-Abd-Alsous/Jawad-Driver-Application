// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DrawerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrawerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DrawerState()';
}


}

/// @nodoc
class $DrawerStateCopyWith<$Res>  {
$DrawerStateCopyWith(DrawerState _, $Res Function(DrawerState) __);
}


/// Adds pattern-matching-related methods to [DrawerState].
extension DrawerStatePatterns on DrawerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadingBankInfo value)?  loadingBankInfo,TResult Function( _LoadedBankInfo value)?  loadedBankInfo,TResult Function( _ErrorBankInfo value)?  errorBankInfo,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingBankInfo() when loadingBankInfo != null:
return loadingBankInfo(_that);case _LoadedBankInfo() when loadedBankInfo != null:
return loadedBankInfo(_that);case _ErrorBankInfo() when errorBankInfo != null:
return errorBankInfo(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadingBankInfo value)  loadingBankInfo,required TResult Function( _LoadedBankInfo value)  loadedBankInfo,required TResult Function( _ErrorBankInfo value)  errorBankInfo,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadingBankInfo():
return loadingBankInfo(_that);case _LoadedBankInfo():
return loadedBankInfo(_that);case _ErrorBankInfo():
return errorBankInfo(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadingBankInfo value)?  loadingBankInfo,TResult? Function( _LoadedBankInfo value)?  loadedBankInfo,TResult? Function( _ErrorBankInfo value)?  errorBankInfo,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingBankInfo() when loadingBankInfo != null:
return loadingBankInfo(_that);case _LoadedBankInfo() when loadedBankInfo != null:
return loadedBankInfo(_that);case _ErrorBankInfo() when errorBankInfo != null:
return errorBankInfo(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingBankInfo,TResult Function()?  loadedBankInfo,TResult Function( String message)?  errorBankInfo,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingBankInfo() when loadingBankInfo != null:
return loadingBankInfo();case _LoadedBankInfo() when loadedBankInfo != null:
return loadedBankInfo();case _ErrorBankInfo() when errorBankInfo != null:
return errorBankInfo(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingBankInfo,required TResult Function()  loadedBankInfo,required TResult Function( String message)  errorBankInfo,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadingBankInfo():
return loadingBankInfo();case _LoadedBankInfo():
return loadedBankInfo();case _ErrorBankInfo():
return errorBankInfo(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingBankInfo,TResult? Function()?  loadedBankInfo,TResult? Function( String message)?  errorBankInfo,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingBankInfo() when loadingBankInfo != null:
return loadingBankInfo();case _LoadedBankInfo() when loadedBankInfo != null:
return loadedBankInfo();case _ErrorBankInfo() when errorBankInfo != null:
return errorBankInfo(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DrawerState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DrawerState.initial()';
}


}




/// @nodoc


class _LoadingBankInfo implements DrawerState {
  const _LoadingBankInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingBankInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DrawerState.loadingBankInfo()';
}


}




/// @nodoc


class _LoadedBankInfo implements DrawerState {
  const _LoadedBankInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedBankInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DrawerState.loadedBankInfo()';
}


}




/// @nodoc


class _ErrorBankInfo implements DrawerState {
  const _ErrorBankInfo(this.message);
  

 final  String message;

/// Create a copy of DrawerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorBankInfoCopyWith<_ErrorBankInfo> get copyWith => __$ErrorBankInfoCopyWithImpl<_ErrorBankInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorBankInfo&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DrawerState.errorBankInfo(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorBankInfoCopyWith<$Res> implements $DrawerStateCopyWith<$Res> {
  factory _$ErrorBankInfoCopyWith(_ErrorBankInfo value, $Res Function(_ErrorBankInfo) _then) = __$ErrorBankInfoCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorBankInfoCopyWithImpl<$Res>
    implements _$ErrorBankInfoCopyWith<$Res> {
  __$ErrorBankInfoCopyWithImpl(this._self, this._then);

  final _ErrorBankInfo _self;
  final $Res Function(_ErrorBankInfo) _then;

/// Create a copy of DrawerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorBankInfo(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
