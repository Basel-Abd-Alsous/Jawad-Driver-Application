// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introductions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IntroductionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() nextPageEvent,
    required TResult Function() skipEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? nextPageEvent,
    TResult? Function()? skipEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? nextPageEvent,
    TResult Function()? skipEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_NextPageEvent value) nextPageEvent,
    required TResult Function(_SkipEvent value) skipEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_NextPageEvent value)? nextPageEvent,
    TResult? Function(_SkipEvent value)? skipEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_NextPageEvent value)? nextPageEvent,
    TResult Function(_SkipEvent value)? skipEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroductionsEventCopyWith<$Res> {
  factory $IntroductionsEventCopyWith(
          IntroductionsEvent value, $Res Function(IntroductionsEvent) then) =
      _$IntroductionsEventCopyWithImpl<$Res, IntroductionsEvent>;
}

/// @nodoc
class _$IntroductionsEventCopyWithImpl<$Res, $Val extends IntroductionsEvent>
    implements $IntroductionsEventCopyWith<$Res> {
  _$IntroductionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialEventImplCopyWith<$Res> {
  factory _$$InitialEventImplCopyWith(
          _$InitialEventImpl value, $Res Function(_$InitialEventImpl) then) =
      __$$InitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$IntroductionsEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialEventImpl implements _InitialEvent {
  const _$InitialEventImpl();

  @override
  String toString() {
    return 'IntroductionsEvent.initialEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() nextPageEvent,
    required TResult Function() skipEvent,
  }) {
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? nextPageEvent,
    TResult? Function()? skipEvent,
  }) {
    return initialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? nextPageEvent,
    TResult Function()? skipEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_NextPageEvent value) nextPageEvent,
    required TResult Function(_SkipEvent value) skipEvent,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_NextPageEvent value)? nextPageEvent,
    TResult? Function(_SkipEvent value)? skipEvent,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_NextPageEvent value)? nextPageEvent,
    TResult Function(_SkipEvent value)? skipEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements IntroductionsEvent {
  const factory _InitialEvent() = _$InitialEventImpl;
}

/// @nodoc
abstract class _$$NextPageEventImplCopyWith<$Res> {
  factory _$$NextPageEventImplCopyWith(
          _$NextPageEventImpl value, $Res Function(_$NextPageEventImpl) then) =
      __$$NextPageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageEventImplCopyWithImpl<$Res>
    extends _$IntroductionsEventCopyWithImpl<$Res, _$NextPageEventImpl>
    implements _$$NextPageEventImplCopyWith<$Res> {
  __$$NextPageEventImplCopyWithImpl(
      _$NextPageEventImpl _value, $Res Function(_$NextPageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageEventImpl implements _NextPageEvent {
  const _$NextPageEventImpl();

  @override
  String toString() {
    return 'IntroductionsEvent.nextPageEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() nextPageEvent,
    required TResult Function() skipEvent,
  }) {
    return nextPageEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? nextPageEvent,
    TResult? Function()? skipEvent,
  }) {
    return nextPageEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? nextPageEvent,
    TResult Function()? skipEvent,
    required TResult orElse(),
  }) {
    if (nextPageEvent != null) {
      return nextPageEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_NextPageEvent value) nextPageEvent,
    required TResult Function(_SkipEvent value) skipEvent,
  }) {
    return nextPageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_NextPageEvent value)? nextPageEvent,
    TResult? Function(_SkipEvent value)? skipEvent,
  }) {
    return nextPageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_NextPageEvent value)? nextPageEvent,
    TResult Function(_SkipEvent value)? skipEvent,
    required TResult orElse(),
  }) {
    if (nextPageEvent != null) {
      return nextPageEvent(this);
    }
    return orElse();
  }
}

abstract class _NextPageEvent implements IntroductionsEvent {
  const factory _NextPageEvent() = _$NextPageEventImpl;
}

/// @nodoc
abstract class _$$SkipEventImplCopyWith<$Res> {
  factory _$$SkipEventImplCopyWith(
          _$SkipEventImpl value, $Res Function(_$SkipEventImpl) then) =
      __$$SkipEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SkipEventImplCopyWithImpl<$Res>
    extends _$IntroductionsEventCopyWithImpl<$Res, _$SkipEventImpl>
    implements _$$SkipEventImplCopyWith<$Res> {
  __$$SkipEventImplCopyWithImpl(
      _$SkipEventImpl _value, $Res Function(_$SkipEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SkipEventImpl implements _SkipEvent {
  const _$SkipEventImpl();

  @override
  String toString() {
    return 'IntroductionsEvent.skipEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SkipEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() nextPageEvent,
    required TResult Function() skipEvent,
  }) {
    return skipEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? nextPageEvent,
    TResult? Function()? skipEvent,
  }) {
    return skipEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? nextPageEvent,
    TResult Function()? skipEvent,
    required TResult orElse(),
  }) {
    if (skipEvent != null) {
      return skipEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_NextPageEvent value) nextPageEvent,
    required TResult Function(_SkipEvent value) skipEvent,
  }) {
    return skipEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_NextPageEvent value)? nextPageEvent,
    TResult? Function(_SkipEvent value)? skipEvent,
  }) {
    return skipEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_NextPageEvent value)? nextPageEvent,
    TResult Function(_SkipEvent value)? skipEvent,
    required TResult orElse(),
  }) {
    if (skipEvent != null) {
      return skipEvent(this);
    }
    return orElse();
  }
}

abstract class _SkipEvent implements IntroductionsEvent {
  const factory _SkipEvent() = _$SkipEventImpl;
}

/// @nodoc
mixin _$IntroductionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) initial,
    required TResult Function() complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? initial,
    TResult? Function()? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? initial,
    TResult Function()? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Complete value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Complete value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroductionsStateCopyWith<$Res> {
  factory $IntroductionsStateCopyWith(
          IntroductionsState value, $Res Function(IntroductionsState) then) =
      _$IntroductionsStateCopyWithImpl<$Res, IntroductionsState>;
}

/// @nodoc
class _$IntroductionsStateCopyWithImpl<$Res, $Val extends IntroductionsState>
    implements $IntroductionsStateCopyWith<$Res> {
  _$IntroductionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$IntroductionsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$InitialImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.index = 0});

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'IntroductionsState.initial(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) initial,
    required TResult Function() complete,
  }) {
    return initial(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? initial,
    TResult? Function()? complete,
  }) {
    return initial?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? initial,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Complete value) complete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Complete value)? complete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements IntroductionsState {
  const factory _Initial({final int index}) = _$InitialImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteImplCopyWith<$Res> {
  factory _$$CompleteImplCopyWith(
          _$CompleteImpl value, $Res Function(_$CompleteImpl) then) =
      __$$CompleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteImplCopyWithImpl<$Res>
    extends _$IntroductionsStateCopyWithImpl<$Res, _$CompleteImpl>
    implements _$$CompleteImplCopyWith<$Res> {
  __$$CompleteImplCopyWithImpl(
      _$CompleteImpl _value, $Res Function(_$CompleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteImpl implements _Complete {
  const _$CompleteImpl();

  @override
  String toString() {
    return 'IntroductionsState.complete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) initial,
    required TResult Function() complete,
  }) {
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? initial,
    TResult? Function()? complete,
  }) {
    return complete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? initial,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Complete value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Complete value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _Complete implements IntroductionsState {
  const factory _Complete() = _$CompleteImpl;
}
