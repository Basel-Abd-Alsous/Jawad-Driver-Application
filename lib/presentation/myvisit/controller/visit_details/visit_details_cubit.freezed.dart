// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VisitDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VisitDetailsState()';
}


}

/// @nodoc
class $VisitDetailsStateCopyWith<$Res>  {
$VisitDetailsStateCopyWith(VisitDetailsState _, $Res Function(VisitDetailsState) __);
}


/// Adds pattern-matching-related methods to [VisitDetailsState].
extension VisitDetailsStatePatterns on VisitDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadingVisitDetails value)?  loadingVisitDetails,TResult Function( _LoadedVisitDetails value)?  loadedVisitDetails,TResult Function( _ErrorVisitDetails value)?  errorVisitDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingVisitDetails() when loadingVisitDetails != null:
return loadingVisitDetails(_that);case _LoadedVisitDetails() when loadedVisitDetails != null:
return loadedVisitDetails(_that);case _ErrorVisitDetails() when errorVisitDetails != null:
return errorVisitDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadingVisitDetails value)  loadingVisitDetails,required TResult Function( _LoadedVisitDetails value)  loadedVisitDetails,required TResult Function( _ErrorVisitDetails value)  errorVisitDetails,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadingVisitDetails():
return loadingVisitDetails(_that);case _LoadedVisitDetails():
return loadedVisitDetails(_that);case _ErrorVisitDetails():
return errorVisitDetails(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadingVisitDetails value)?  loadingVisitDetails,TResult? Function( _LoadedVisitDetails value)?  loadedVisitDetails,TResult? Function( _ErrorVisitDetails value)?  errorVisitDetails,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingVisitDetails() when loadingVisitDetails != null:
return loadingVisitDetails(_that);case _LoadedVisitDetails() when loadedVisitDetails != null:
return loadedVisitDetails(_that);case _ErrorVisitDetails() when errorVisitDetails != null:
return errorVisitDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingVisitDetails,TResult Function( VisitDetailsModel data)?  loadedVisitDetails,TResult Function( String message)?  errorVisitDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingVisitDetails() when loadingVisitDetails != null:
return loadingVisitDetails();case _LoadedVisitDetails() when loadedVisitDetails != null:
return loadedVisitDetails(_that.data);case _ErrorVisitDetails() when errorVisitDetails != null:
return errorVisitDetails(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingVisitDetails,required TResult Function( VisitDetailsModel data)  loadedVisitDetails,required TResult Function( String message)  errorVisitDetails,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadingVisitDetails():
return loadingVisitDetails();case _LoadedVisitDetails():
return loadedVisitDetails(_that.data);case _ErrorVisitDetails():
return errorVisitDetails(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingVisitDetails,TResult? Function( VisitDetailsModel data)?  loadedVisitDetails,TResult? Function( String message)?  errorVisitDetails,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingVisitDetails() when loadingVisitDetails != null:
return loadingVisitDetails();case _LoadedVisitDetails() when loadedVisitDetails != null:
return loadedVisitDetails(_that.data);case _ErrorVisitDetails() when errorVisitDetails != null:
return errorVisitDetails(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements VisitDetailsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VisitDetailsState.initial()';
}


}




/// @nodoc


class _LoadingVisitDetails implements VisitDetailsState {
  const _LoadingVisitDetails();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingVisitDetails);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VisitDetailsState.loadingVisitDetails()';
}


}




/// @nodoc


class _LoadedVisitDetails implements VisitDetailsState {
  const _LoadedVisitDetails(this.data);
  

 final  VisitDetailsModel data;

/// Create a copy of VisitDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedVisitDetailsCopyWith<_LoadedVisitDetails> get copyWith => __$LoadedVisitDetailsCopyWithImpl<_LoadedVisitDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedVisitDetails&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'VisitDetailsState.loadedVisitDetails(data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoadedVisitDetailsCopyWith<$Res> implements $VisitDetailsStateCopyWith<$Res> {
  factory _$LoadedVisitDetailsCopyWith(_LoadedVisitDetails value, $Res Function(_LoadedVisitDetails) _then) = __$LoadedVisitDetailsCopyWithImpl;
@useResult
$Res call({
 VisitDetailsModel data
});


$VisitDetailsModelCopyWith<$Res> get data;

}
/// @nodoc
class __$LoadedVisitDetailsCopyWithImpl<$Res>
    implements _$LoadedVisitDetailsCopyWith<$Res> {
  __$LoadedVisitDetailsCopyWithImpl(this._self, this._then);

  final _LoadedVisitDetails _self;
  final $Res Function(_LoadedVisitDetails) _then;

/// Create a copy of VisitDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_LoadedVisitDetails(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VisitDetailsModel,
  ));
}

/// Create a copy of VisitDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisitDetailsModelCopyWith<$Res> get data {
  
  return $VisitDetailsModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _ErrorVisitDetails implements VisitDetailsState {
  const _ErrorVisitDetails(this.message);
  

 final  String message;

/// Create a copy of VisitDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorVisitDetailsCopyWith<_ErrorVisitDetails> get copyWith => __$ErrorVisitDetailsCopyWithImpl<_ErrorVisitDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorVisitDetails&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'VisitDetailsState.errorVisitDetails(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorVisitDetailsCopyWith<$Res> implements $VisitDetailsStateCopyWith<$Res> {
  factory _$ErrorVisitDetailsCopyWith(_ErrorVisitDetails value, $Res Function(_ErrorVisitDetails) _then) = __$ErrorVisitDetailsCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorVisitDetailsCopyWithImpl<$Res>
    implements _$ErrorVisitDetailsCopyWith<$Res> {
  __$ErrorVisitDetailsCopyWithImpl(this._self, this._then);

  final _ErrorVisitDetails _self;
  final $Res Function(_ErrorVisitDetails) _then;

/// Create a copy of VisitDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorVisitDetails(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
