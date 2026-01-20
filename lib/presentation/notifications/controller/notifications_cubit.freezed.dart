// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationState()';
}


}

/// @nodoc
class $NotificationStateCopyWith<$Res>  {
$NotificationStateCopyWith(NotificationState _, $Res Function(NotificationState) __);
}


/// Adds pattern-matching-related methods to [NotificationState].
extension NotificationStatePatterns on NotificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadingNotifications value)?  loadingNotifications,TResult Function( _LoadedNotifications value)?  loadedNotifications,TResult Function( _ErrorNotifications value)?  errorNotifications,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingNotifications() when loadingNotifications != null:
return loadingNotifications(_that);case _LoadedNotifications() when loadedNotifications != null:
return loadedNotifications(_that);case _ErrorNotifications() when errorNotifications != null:
return errorNotifications(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadingNotifications value)  loadingNotifications,required TResult Function( _LoadedNotifications value)  loadedNotifications,required TResult Function( _ErrorNotifications value)  errorNotifications,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadingNotifications():
return loadingNotifications(_that);case _LoadedNotifications():
return loadedNotifications(_that);case _ErrorNotifications():
return errorNotifications(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadingNotifications value)?  loadingNotifications,TResult? Function( _LoadedNotifications value)?  loadedNotifications,TResult? Function( _ErrorNotifications value)?  errorNotifications,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingNotifications() when loadingNotifications != null:
return loadingNotifications(_that);case _LoadedNotifications() when loadedNotifications != null:
return loadedNotifications(_that);case _ErrorNotifications() when errorNotifications != null:
return errorNotifications(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingNotifications,TResult Function( NotificationsModel data,  bool? hasMore)?  loadedNotifications,TResult Function( String message)?  errorNotifications,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingNotifications() when loadingNotifications != null:
return loadingNotifications();case _LoadedNotifications() when loadedNotifications != null:
return loadedNotifications(_that.data,_that.hasMore);case _ErrorNotifications() when errorNotifications != null:
return errorNotifications(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingNotifications,required TResult Function( NotificationsModel data,  bool? hasMore)  loadedNotifications,required TResult Function( String message)  errorNotifications,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadingNotifications():
return loadingNotifications();case _LoadedNotifications():
return loadedNotifications(_that.data,_that.hasMore);case _ErrorNotifications():
return errorNotifications(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingNotifications,TResult? Function( NotificationsModel data,  bool? hasMore)?  loadedNotifications,TResult? Function( String message)?  errorNotifications,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingNotifications() when loadingNotifications != null:
return loadingNotifications();case _LoadedNotifications() when loadedNotifications != null:
return loadedNotifications(_that.data,_that.hasMore);case _ErrorNotifications() when errorNotifications != null:
return errorNotifications(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements NotificationState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationState.initial()';
}


}




/// @nodoc


class _LoadingNotifications implements NotificationState {
  const _LoadingNotifications();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingNotifications);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationState.loadingNotifications()';
}


}




/// @nodoc


class _LoadedNotifications implements NotificationState {
  const _LoadedNotifications({required this.data, this.hasMore = false});
  

 final  NotificationsModel data;
@JsonKey() final  bool? hasMore;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedNotificationsCopyWith<_LoadedNotifications> get copyWith => __$LoadedNotificationsCopyWithImpl<_LoadedNotifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedNotifications&&(identical(other.data, data) || other.data == data)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,data,hasMore);

@override
String toString() {
  return 'NotificationState.loadedNotifications(data: $data, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$LoadedNotificationsCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$LoadedNotificationsCopyWith(_LoadedNotifications value, $Res Function(_LoadedNotifications) _then) = __$LoadedNotificationsCopyWithImpl;
@useResult
$Res call({
 NotificationsModel data, bool? hasMore
});


$NotificationsModelCopyWith<$Res> get data;

}
/// @nodoc
class __$LoadedNotificationsCopyWithImpl<$Res>
    implements _$LoadedNotificationsCopyWith<$Res> {
  __$LoadedNotificationsCopyWithImpl(this._self, this._then);

  final _LoadedNotifications _self;
  final $Res Function(_LoadedNotifications) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,Object? hasMore = freezed,}) {
  return _then(_LoadedNotifications(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationsModel,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationsModelCopyWith<$Res> get data {
  
  return $NotificationsModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _ErrorNotifications implements NotificationState {
  const _ErrorNotifications(this.message);
  

 final  String message;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorNotificationsCopyWith<_ErrorNotifications> get copyWith => __$ErrorNotificationsCopyWithImpl<_ErrorNotifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorNotifications&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NotificationState.errorNotifications(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorNotificationsCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$ErrorNotificationsCopyWith(_ErrorNotifications value, $Res Function(_ErrorNotifications) _then) = __$ErrorNotificationsCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorNotificationsCopyWithImpl<$Res>
    implements _$ErrorNotificationsCopyWith<$Res> {
  __$ErrorNotificationsCopyWithImpl(this._self, this._then);

  final _ErrorNotifications _self;
  final $Res Function(_ErrorNotifications) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorNotifications(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
