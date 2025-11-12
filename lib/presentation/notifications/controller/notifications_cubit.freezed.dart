// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNotifications,
    required TResult Function(NotificationsModel data, bool? hasMore)
        loadedNotifications,
    required TResult Function(String message) errorNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingNotifications,
    TResult? Function(NotificationsModel data, bool? hasMore)?
        loadedNotifications,
    TResult? Function(String message)? errorNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNotifications,
    TResult Function(NotificationsModel data, bool? hasMore)?
        loadedNotifications,
    TResult Function(String message)? errorNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNotifications value) loadingNotifications,
    required TResult Function(_LoadedNotifications value) loadedNotifications,
    required TResult Function(_ErrorNotifications value) errorNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingNotifications value)? loadingNotifications,
    TResult? Function(_LoadedNotifications value)? loadedNotifications,
    TResult? Function(_ErrorNotifications value)? errorNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNotifications value)? loadingNotifications,
    TResult Function(_LoadedNotifications value)? loadedNotifications,
    TResult Function(_ErrorNotifications value)? errorNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NotificationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNotifications,
    required TResult Function(NotificationsModel data, bool? hasMore)
        loadedNotifications,
    required TResult Function(String message) errorNotifications,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingNotifications,
    TResult? Function(NotificationsModel data, bool? hasMore)?
        loadedNotifications,
    TResult? Function(String message)? errorNotifications,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNotifications,
    TResult Function(NotificationsModel data, bool? hasMore)?
        loadedNotifications,
    TResult Function(String message)? errorNotifications,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNotifications value) loadingNotifications,
    required TResult Function(_LoadedNotifications value) loadedNotifications,
    required TResult Function(_ErrorNotifications value) errorNotifications,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingNotifications value)? loadingNotifications,
    TResult? Function(_LoadedNotifications value)? loadedNotifications,
    TResult? Function(_ErrorNotifications value)? errorNotifications,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNotifications value)? loadingNotifications,
    TResult Function(_LoadedNotifications value)? loadedNotifications,
    TResult Function(_ErrorNotifications value)? errorNotifications,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingNotificationsImplCopyWith<$Res> {
  factory _$$LoadingNotificationsImplCopyWith(_$LoadingNotificationsImpl value,
          $Res Function(_$LoadingNotificationsImpl) then) =
      __$$LoadingNotificationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$LoadingNotificationsImpl>
    implements _$$LoadingNotificationsImplCopyWith<$Res> {
  __$$LoadingNotificationsImplCopyWithImpl(_$LoadingNotificationsImpl _value,
      $Res Function(_$LoadingNotificationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingNotificationsImpl implements _LoadingNotifications {
  const _$LoadingNotificationsImpl();

  @override
  String toString() {
    return 'NotificationState.loadingNotifications()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingNotificationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNotifications,
    required TResult Function(NotificationsModel data, bool? hasMore)
        loadedNotifications,
    required TResult Function(String message) errorNotifications,
  }) {
    return loadingNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingNotifications,
    TResult? Function(NotificationsModel data, bool? hasMore)?
        loadedNotifications,
    TResult? Function(String message)? errorNotifications,
  }) {
    return loadingNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNotifications,
    TResult Function(NotificationsModel data, bool? hasMore)?
        loadedNotifications,
    TResult Function(String message)? errorNotifications,
    required TResult orElse(),
  }) {
    if (loadingNotifications != null) {
      return loadingNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNotifications value) loadingNotifications,
    required TResult Function(_LoadedNotifications value) loadedNotifications,
    required TResult Function(_ErrorNotifications value) errorNotifications,
  }) {
    return loadingNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingNotifications value)? loadingNotifications,
    TResult? Function(_LoadedNotifications value)? loadedNotifications,
    TResult? Function(_ErrorNotifications value)? errorNotifications,
  }) {
    return loadingNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNotifications value)? loadingNotifications,
    TResult Function(_LoadedNotifications value)? loadedNotifications,
    TResult Function(_ErrorNotifications value)? errorNotifications,
    required TResult orElse(),
  }) {
    if (loadingNotifications != null) {
      return loadingNotifications(this);
    }
    return orElse();
  }
}

abstract class _LoadingNotifications implements NotificationState {
  const factory _LoadingNotifications() = _$LoadingNotificationsImpl;
}

/// @nodoc
abstract class _$$LoadedNotificationsImplCopyWith<$Res> {
  factory _$$LoadedNotificationsImplCopyWith(_$LoadedNotificationsImpl value,
          $Res Function(_$LoadedNotificationsImpl) then) =
      __$$LoadedNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationsModel data, bool? hasMore});

  $NotificationsModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$LoadedNotificationsImpl>
    implements _$$LoadedNotificationsImplCopyWith<$Res> {
  __$$LoadedNotificationsImplCopyWithImpl(_$LoadedNotificationsImpl _value,
      $Res Function(_$LoadedNotificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? hasMore = freezed,
  }) {
    return _then(_$LoadedNotificationsImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationsModel,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationsModelCopyWith<$Res> get data {
    return $NotificationsModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedNotificationsImpl implements _LoadedNotifications {
  const _$LoadedNotificationsImpl({required this.data, this.hasMore = false});

  @override
  final NotificationsModel data;
  @override
  @JsonKey()
  final bool? hasMore;

  @override
  String toString() {
    return 'NotificationState.loadedNotifications(data: $data, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedNotificationsImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedNotificationsImplCopyWith<_$LoadedNotificationsImpl> get copyWith =>
      __$$LoadedNotificationsImplCopyWithImpl<_$LoadedNotificationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNotifications,
    required TResult Function(NotificationsModel data, bool? hasMore)
        loadedNotifications,
    required TResult Function(String message) errorNotifications,
  }) {
    return loadedNotifications(data, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingNotifications,
    TResult? Function(NotificationsModel data, bool? hasMore)?
        loadedNotifications,
    TResult? Function(String message)? errorNotifications,
  }) {
    return loadedNotifications?.call(data, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNotifications,
    TResult Function(NotificationsModel data, bool? hasMore)?
        loadedNotifications,
    TResult Function(String message)? errorNotifications,
    required TResult orElse(),
  }) {
    if (loadedNotifications != null) {
      return loadedNotifications(data, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNotifications value) loadingNotifications,
    required TResult Function(_LoadedNotifications value) loadedNotifications,
    required TResult Function(_ErrorNotifications value) errorNotifications,
  }) {
    return loadedNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingNotifications value)? loadingNotifications,
    TResult? Function(_LoadedNotifications value)? loadedNotifications,
    TResult? Function(_ErrorNotifications value)? errorNotifications,
  }) {
    return loadedNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNotifications value)? loadingNotifications,
    TResult Function(_LoadedNotifications value)? loadedNotifications,
    TResult Function(_ErrorNotifications value)? errorNotifications,
    required TResult orElse(),
  }) {
    if (loadedNotifications != null) {
      return loadedNotifications(this);
    }
    return orElse();
  }
}

abstract class _LoadedNotifications implements NotificationState {
  const factory _LoadedNotifications(
      {required final NotificationsModel data,
      final bool? hasMore}) = _$LoadedNotificationsImpl;

  NotificationsModel get data;
  bool? get hasMore;
  @JsonKey(ignore: true)
  _$$LoadedNotificationsImplCopyWith<_$LoadedNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorNotificationsImplCopyWith<$Res> {
  factory _$$ErrorNotificationsImplCopyWith(_$ErrorNotificationsImpl value,
          $Res Function(_$ErrorNotificationsImpl) then) =
      __$$ErrorNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$ErrorNotificationsImpl>
    implements _$$ErrorNotificationsImplCopyWith<$Res> {
  __$$ErrorNotificationsImplCopyWithImpl(_$ErrorNotificationsImpl _value,
      $Res Function(_$ErrorNotificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorNotificationsImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorNotificationsImpl implements _ErrorNotifications {
  const _$ErrorNotificationsImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NotificationState.errorNotifications(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorNotificationsImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorNotificationsImplCopyWith<_$ErrorNotificationsImpl> get copyWith =>
      __$$ErrorNotificationsImplCopyWithImpl<_$ErrorNotificationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingNotifications,
    required TResult Function(NotificationsModel data, bool? hasMore)
        loadedNotifications,
    required TResult Function(String message) errorNotifications,
  }) {
    return errorNotifications(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingNotifications,
    TResult? Function(NotificationsModel data, bool? hasMore)?
        loadedNotifications,
    TResult? Function(String message)? errorNotifications,
  }) {
    return errorNotifications?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingNotifications,
    TResult Function(NotificationsModel data, bool? hasMore)?
        loadedNotifications,
    TResult Function(String message)? errorNotifications,
    required TResult orElse(),
  }) {
    if (errorNotifications != null) {
      return errorNotifications(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingNotifications value) loadingNotifications,
    required TResult Function(_LoadedNotifications value) loadedNotifications,
    required TResult Function(_ErrorNotifications value) errorNotifications,
  }) {
    return errorNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingNotifications value)? loadingNotifications,
    TResult? Function(_LoadedNotifications value)? loadedNotifications,
    TResult? Function(_ErrorNotifications value)? errorNotifications,
  }) {
    return errorNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingNotifications value)? loadingNotifications,
    TResult Function(_LoadedNotifications value)? loadedNotifications,
    TResult Function(_ErrorNotifications value)? errorNotifications,
    required TResult orElse(),
  }) {
    if (errorNotifications != null) {
      return errorNotifications(this);
    }
    return orElse();
  }
}

abstract class _ErrorNotifications implements NotificationState {
  const factory _ErrorNotifications(final String message) =
      _$ErrorNotificationsImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorNotificationsImplCopyWith<_$ErrorNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
