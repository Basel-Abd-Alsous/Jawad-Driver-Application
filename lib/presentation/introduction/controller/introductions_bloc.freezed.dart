// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introductions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroductionsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroductionsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroductionsEvent()';
}


}

/// @nodoc
class $IntroductionsEventCopyWith<$Res>  {
$IntroductionsEventCopyWith(IntroductionsEvent _, $Res Function(IntroductionsEvent) __);
}


/// Adds pattern-matching-related methods to [IntroductionsEvent].
extension IntroductionsEventPatterns on IntroductionsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialEvent value)?  initialEvent,TResult Function( _NextPageEvent value)?  nextPageEvent,TResult Function( _SkipEvent value)?  skipEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialEvent() when initialEvent != null:
return initialEvent(_that);case _NextPageEvent() when nextPageEvent != null:
return nextPageEvent(_that);case _SkipEvent() when skipEvent != null:
return skipEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialEvent value)  initialEvent,required TResult Function( _NextPageEvent value)  nextPageEvent,required TResult Function( _SkipEvent value)  skipEvent,}){
final _that = this;
switch (_that) {
case _InitialEvent():
return initialEvent(_that);case _NextPageEvent():
return nextPageEvent(_that);case _SkipEvent():
return skipEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialEvent value)?  initialEvent,TResult? Function( _NextPageEvent value)?  nextPageEvent,TResult? Function( _SkipEvent value)?  skipEvent,}){
final _that = this;
switch (_that) {
case _InitialEvent() when initialEvent != null:
return initialEvent(_that);case _NextPageEvent() when nextPageEvent != null:
return nextPageEvent(_that);case _SkipEvent() when skipEvent != null:
return skipEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialEvent,TResult Function()?  nextPageEvent,TResult Function()?  skipEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialEvent() when initialEvent != null:
return initialEvent();case _NextPageEvent() when nextPageEvent != null:
return nextPageEvent();case _SkipEvent() when skipEvent != null:
return skipEvent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialEvent,required TResult Function()  nextPageEvent,required TResult Function()  skipEvent,}) {final _that = this;
switch (_that) {
case _InitialEvent():
return initialEvent();case _NextPageEvent():
return nextPageEvent();case _SkipEvent():
return skipEvent();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialEvent,TResult? Function()?  nextPageEvent,TResult? Function()?  skipEvent,}) {final _that = this;
switch (_that) {
case _InitialEvent() when initialEvent != null:
return initialEvent();case _NextPageEvent() when nextPageEvent != null:
return nextPageEvent();case _SkipEvent() when skipEvent != null:
return skipEvent();case _:
  return null;

}
}

}

/// @nodoc


class _InitialEvent implements IntroductionsEvent {
  const _InitialEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroductionsEvent.initialEvent()';
}


}




/// @nodoc


class _NextPageEvent implements IntroductionsEvent {
  const _NextPageEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextPageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroductionsEvent.nextPageEvent()';
}


}




/// @nodoc


class _SkipEvent implements IntroductionsEvent {
  const _SkipEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkipEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroductionsEvent.skipEvent()';
}


}




/// @nodoc
mixin _$IntroductionsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroductionsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroductionsState()';
}


}

/// @nodoc
class $IntroductionsStateCopyWith<$Res>  {
$IntroductionsStateCopyWith(IntroductionsState _, $Res Function(IntroductionsState) __);
}


/// Adds pattern-matching-related methods to [IntroductionsState].
extension IntroductionsStatePatterns on IntroductionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Complete value)?  complete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Complete() when complete != null:
return complete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Complete value)  complete,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Complete():
return complete(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Complete value)?  complete,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Complete() when complete != null:
return complete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int index)?  initial,TResult Function()?  complete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.index);case _Complete() when complete != null:
return complete();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int index)  initial,required TResult Function()  complete,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.index);case _Complete():
return complete();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int index)?  initial,TResult? Function()?  complete,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.index);case _Complete() when complete != null:
return complete();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements IntroductionsState {
  const _Initial({this.index = 0});
  

@JsonKey() final  int index;

/// Create a copy of IntroductionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'IntroductionsState.initial(index: $index)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $IntroductionsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of IntroductionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_Initial(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Complete implements IntroductionsState {
  const _Complete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroductionsState.complete()';
}


}




// dart format on
