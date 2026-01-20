// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VisitState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VisitState()';
}


}

/// @nodoc
class $VisitStateCopyWith<$Res>  {
$VisitStateCopyWith(VisitState _, $Res Function(VisitState) __);
}


/// Adds pattern-matching-related methods to [VisitState].
extension VisitStatePatterns on VisitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadingPreviousVisit value)?  loadingPreviousVisit,TResult Function( _LoadedPreviousVisit value)?  loadedPreviousVisit,TResult Function( _ErrorPreviousVisit value)?  errorPreviousVisit,TResult Function( _LoadingCancelVisits value)?  loadingCancelVisits,TResult Function( _LoadedCancelVisits value)?  loadedCancelVisits,TResult Function( _ErrorCancelVisits value)?  errorCancelVisits,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingPreviousVisit() when loadingPreviousVisit != null:
return loadingPreviousVisit(_that);case _LoadedPreviousVisit() when loadedPreviousVisit != null:
return loadedPreviousVisit(_that);case _ErrorPreviousVisit() when errorPreviousVisit != null:
return errorPreviousVisit(_that);case _LoadingCancelVisits() when loadingCancelVisits != null:
return loadingCancelVisits(_that);case _LoadedCancelVisits() when loadedCancelVisits != null:
return loadedCancelVisits(_that);case _ErrorCancelVisits() when errorCancelVisits != null:
return errorCancelVisits(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadingPreviousVisit value)  loadingPreviousVisit,required TResult Function( _LoadedPreviousVisit value)  loadedPreviousVisit,required TResult Function( _ErrorPreviousVisit value)  errorPreviousVisit,required TResult Function( _LoadingCancelVisits value)  loadingCancelVisits,required TResult Function( _LoadedCancelVisits value)  loadedCancelVisits,required TResult Function( _ErrorCancelVisits value)  errorCancelVisits,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadingPreviousVisit():
return loadingPreviousVisit(_that);case _LoadedPreviousVisit():
return loadedPreviousVisit(_that);case _ErrorPreviousVisit():
return errorPreviousVisit(_that);case _LoadingCancelVisits():
return loadingCancelVisits(_that);case _LoadedCancelVisits():
return loadedCancelVisits(_that);case _ErrorCancelVisits():
return errorCancelVisits(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadingPreviousVisit value)?  loadingPreviousVisit,TResult? Function( _LoadedPreviousVisit value)?  loadedPreviousVisit,TResult? Function( _ErrorPreviousVisit value)?  errorPreviousVisit,TResult? Function( _LoadingCancelVisits value)?  loadingCancelVisits,TResult? Function( _LoadedCancelVisits value)?  loadedCancelVisits,TResult? Function( _ErrorCancelVisits value)?  errorCancelVisits,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingPreviousVisit() when loadingPreviousVisit != null:
return loadingPreviousVisit(_that);case _LoadedPreviousVisit() when loadedPreviousVisit != null:
return loadedPreviousVisit(_that);case _ErrorPreviousVisit() when errorPreviousVisit != null:
return errorPreviousVisit(_that);case _LoadingCancelVisits() when loadingCancelVisits != null:
return loadingCancelVisits(_that);case _LoadedCancelVisits() when loadedCancelVisits != null:
return loadedCancelVisits(_that);case _ErrorCancelVisits() when errorCancelVisits != null:
return errorCancelVisits(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingPreviousVisit,TResult Function( VisitModel data,  bool? hasMore)?  loadedPreviousVisit,TResult Function( String message)?  errorPreviousVisit,TResult Function()?  loadingCancelVisits,TResult Function( VisitModel data,  bool? hasMore)?  loadedCancelVisits,TResult Function( String message)?  errorCancelVisits,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingPreviousVisit() when loadingPreviousVisit != null:
return loadingPreviousVisit();case _LoadedPreviousVisit() when loadedPreviousVisit != null:
return loadedPreviousVisit(_that.data,_that.hasMore);case _ErrorPreviousVisit() when errorPreviousVisit != null:
return errorPreviousVisit(_that.message);case _LoadingCancelVisits() when loadingCancelVisits != null:
return loadingCancelVisits();case _LoadedCancelVisits() when loadedCancelVisits != null:
return loadedCancelVisits(_that.data,_that.hasMore);case _ErrorCancelVisits() when errorCancelVisits != null:
return errorCancelVisits(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingPreviousVisit,required TResult Function( VisitModel data,  bool? hasMore)  loadedPreviousVisit,required TResult Function( String message)  errorPreviousVisit,required TResult Function()  loadingCancelVisits,required TResult Function( VisitModel data,  bool? hasMore)  loadedCancelVisits,required TResult Function( String message)  errorCancelVisits,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadingPreviousVisit():
return loadingPreviousVisit();case _LoadedPreviousVisit():
return loadedPreviousVisit(_that.data,_that.hasMore);case _ErrorPreviousVisit():
return errorPreviousVisit(_that.message);case _LoadingCancelVisits():
return loadingCancelVisits();case _LoadedCancelVisits():
return loadedCancelVisits(_that.data,_that.hasMore);case _ErrorCancelVisits():
return errorCancelVisits(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingPreviousVisit,TResult? Function( VisitModel data,  bool? hasMore)?  loadedPreviousVisit,TResult? Function( String message)?  errorPreviousVisit,TResult? Function()?  loadingCancelVisits,TResult? Function( VisitModel data,  bool? hasMore)?  loadedCancelVisits,TResult? Function( String message)?  errorCancelVisits,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingPreviousVisit() when loadingPreviousVisit != null:
return loadingPreviousVisit();case _LoadedPreviousVisit() when loadedPreviousVisit != null:
return loadedPreviousVisit(_that.data,_that.hasMore);case _ErrorPreviousVisit() when errorPreviousVisit != null:
return errorPreviousVisit(_that.message);case _LoadingCancelVisits() when loadingCancelVisits != null:
return loadingCancelVisits();case _LoadedCancelVisits() when loadedCancelVisits != null:
return loadedCancelVisits(_that.data,_that.hasMore);case _ErrorCancelVisits() when errorCancelVisits != null:
return errorCancelVisits(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements VisitState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VisitState.initial()';
}


}




/// @nodoc


class _LoadingPreviousVisit implements VisitState {
  const _LoadingPreviousVisit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingPreviousVisit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VisitState.loadingPreviousVisit()';
}


}




/// @nodoc


class _LoadedPreviousVisit implements VisitState {
  const _LoadedPreviousVisit({required this.data, this.hasMore = false});
  

 final  VisitModel data;
@JsonKey() final  bool? hasMore;

/// Create a copy of VisitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedPreviousVisitCopyWith<_LoadedPreviousVisit> get copyWith => __$LoadedPreviousVisitCopyWithImpl<_LoadedPreviousVisit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedPreviousVisit&&(identical(other.data, data) || other.data == data)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,data,hasMore);

@override
String toString() {
  return 'VisitState.loadedPreviousVisit(data: $data, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$LoadedPreviousVisitCopyWith<$Res> implements $VisitStateCopyWith<$Res> {
  factory _$LoadedPreviousVisitCopyWith(_LoadedPreviousVisit value, $Res Function(_LoadedPreviousVisit) _then) = __$LoadedPreviousVisitCopyWithImpl;
@useResult
$Res call({
 VisitModel data, bool? hasMore
});


$VisitModelCopyWith<$Res> get data;

}
/// @nodoc
class __$LoadedPreviousVisitCopyWithImpl<$Res>
    implements _$LoadedPreviousVisitCopyWith<$Res> {
  __$LoadedPreviousVisitCopyWithImpl(this._self, this._then);

  final _LoadedPreviousVisit _self;
  final $Res Function(_LoadedPreviousVisit) _then;

/// Create a copy of VisitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,Object? hasMore = freezed,}) {
  return _then(_LoadedPreviousVisit(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VisitModel,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of VisitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisitModelCopyWith<$Res> get data {
  
  return $VisitModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _ErrorPreviousVisit implements VisitState {
  const _ErrorPreviousVisit(this.message);
  

 final  String message;

/// Create a copy of VisitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorPreviousVisitCopyWith<_ErrorPreviousVisit> get copyWith => __$ErrorPreviousVisitCopyWithImpl<_ErrorPreviousVisit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorPreviousVisit&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'VisitState.errorPreviousVisit(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorPreviousVisitCopyWith<$Res> implements $VisitStateCopyWith<$Res> {
  factory _$ErrorPreviousVisitCopyWith(_ErrorPreviousVisit value, $Res Function(_ErrorPreviousVisit) _then) = __$ErrorPreviousVisitCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorPreviousVisitCopyWithImpl<$Res>
    implements _$ErrorPreviousVisitCopyWith<$Res> {
  __$ErrorPreviousVisitCopyWithImpl(this._self, this._then);

  final _ErrorPreviousVisit _self;
  final $Res Function(_ErrorPreviousVisit) _then;

/// Create a copy of VisitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorPreviousVisit(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadingCancelVisits implements VisitState {
  const _LoadingCancelVisits();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingCancelVisits);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VisitState.loadingCancelVisits()';
}


}




/// @nodoc


class _LoadedCancelVisits implements VisitState {
  const _LoadedCancelVisits({required this.data, this.hasMore = false});
  

 final  VisitModel data;
@JsonKey() final  bool? hasMore;

/// Create a copy of VisitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCancelVisitsCopyWith<_LoadedCancelVisits> get copyWith => __$LoadedCancelVisitsCopyWithImpl<_LoadedCancelVisits>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedCancelVisits&&(identical(other.data, data) || other.data == data)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,data,hasMore);

@override
String toString() {
  return 'VisitState.loadedCancelVisits(data: $data, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$LoadedCancelVisitsCopyWith<$Res> implements $VisitStateCopyWith<$Res> {
  factory _$LoadedCancelVisitsCopyWith(_LoadedCancelVisits value, $Res Function(_LoadedCancelVisits) _then) = __$LoadedCancelVisitsCopyWithImpl;
@useResult
$Res call({
 VisitModel data, bool? hasMore
});


$VisitModelCopyWith<$Res> get data;

}
/// @nodoc
class __$LoadedCancelVisitsCopyWithImpl<$Res>
    implements _$LoadedCancelVisitsCopyWith<$Res> {
  __$LoadedCancelVisitsCopyWithImpl(this._self, this._then);

  final _LoadedCancelVisits _self;
  final $Res Function(_LoadedCancelVisits) _then;

/// Create a copy of VisitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,Object? hasMore = freezed,}) {
  return _then(_LoadedCancelVisits(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VisitModel,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of VisitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisitModelCopyWith<$Res> get data {
  
  return $VisitModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _ErrorCancelVisits implements VisitState {
  const _ErrorCancelVisits(this.message);
  

 final  String message;

/// Create a copy of VisitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCancelVisitsCopyWith<_ErrorCancelVisits> get copyWith => __$ErrorCancelVisitsCopyWithImpl<_ErrorCancelVisits>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorCancelVisits&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'VisitState.errorCancelVisits(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCancelVisitsCopyWith<$Res> implements $VisitStateCopyWith<$Res> {
  factory _$ErrorCancelVisitsCopyWith(_ErrorCancelVisits value, $Res Function(_ErrorCancelVisits) _then) = __$ErrorCancelVisitsCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCancelVisitsCopyWithImpl<$Res>
    implements _$ErrorCancelVisitsCopyWith<$Res> {
  __$ErrorCancelVisitsCopyWithImpl(this._self, this._then);

  final _ErrorCancelVisits _self;
  final $Res Function(_ErrorCancelVisits) _then;

/// Create a copy of VisitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorCancelVisits(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
