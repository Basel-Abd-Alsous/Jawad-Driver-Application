// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationsModel _$NotificationsModelFromJson(Map<String, dynamic> json) {
  return _NotificationsModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationsModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "payload")
  Payload? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationsModelCopyWith<NotificationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsModelCopyWith<$Res> {
  factory $NotificationsModelCopyWith(
          NotificationsModel value, $Res Function(NotificationsModel) then) =
      _$NotificationsModelCopyWithImpl<$Res, NotificationsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "payload") Payload? payload,
      @JsonKey(name: "isSuccess") bool? isSuccess});

  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$NotificationsModelCopyWithImpl<$Res, $Val extends NotificationsModel>
    implements $NotificationsModelCopyWith<$Res> {
  _$NotificationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? payload = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $PayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationsModelImplCopyWith<$Res>
    implements $NotificationsModelCopyWith<$Res> {
  factory _$$NotificationsModelImplCopyWith(_$NotificationsModelImpl value,
          $Res Function(_$NotificationsModelImpl) then) =
      __$$NotificationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "payload") Payload? payload,
      @JsonKey(name: "isSuccess") bool? isSuccess});

  @override
  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$NotificationsModelImplCopyWithImpl<$Res>
    extends _$NotificationsModelCopyWithImpl<$Res, _$NotificationsModelImpl>
    implements _$$NotificationsModelImplCopyWith<$Res> {
  __$$NotificationsModelImplCopyWithImpl(_$NotificationsModelImpl _value,
      $Res Function(_$NotificationsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? payload = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$NotificationsModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationsModelImpl implements _NotificationsModel {
  const _$NotificationsModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "payload") this.payload,
      @JsonKey(name: "isSuccess") this.isSuccess});

  factory _$NotificationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationsModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "payload")
  final Payload? payload;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;

  @override
  String toString() {
    return 'NotificationsModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, code, message, payload, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsModelImplCopyWith<_$NotificationsModelImpl> get copyWith =>
      __$$NotificationsModelImplCopyWithImpl<_$NotificationsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationsModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationsModel implements NotificationsModel {
  const factory _NotificationsModel(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "payload") final Payload? payload,
          @JsonKey(name: "isSuccess") final bool? isSuccess}) =
      _$NotificationsModelImpl;

  factory _NotificationsModel.fromJson(Map<String, dynamic> json) =
      _$NotificationsModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "code")
  int? get code;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "payload")
  Payload? get payload;
  @override
  @JsonKey(name: "isSuccess")
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$NotificationsModelImplCopyWith<_$NotificationsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
mixin _$Payload {
  @JsonKey(name: "notifications")
  List<NotificationData>? get notifications =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "unread_notifications_count")
  int? get unreadNotificationsCount => throw _privateConstructorUsedError;
  @JsonKey(name: "pagination")
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res, Payload>;
  @useResult
  $Res call(
      {@JsonKey(name: "notifications") List<NotificationData>? notifications,
      @JsonKey(name: "unread_notifications_count")
      int? unreadNotificationsCount,
      @JsonKey(name: "pagination") Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res, $Val extends Payload>
    implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
    Object? unreadNotificationsCount = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationData>?,
      unreadNotificationsCount: freezed == unreadNotificationsCount
          ? _value.unreadNotificationsCount
          : unreadNotificationsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayloadImplCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$$PayloadImplCopyWith(
          _$PayloadImpl value, $Res Function(_$PayloadImpl) then) =
      __$$PayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "notifications") List<NotificationData>? notifications,
      @JsonKey(name: "unread_notifications_count")
      int? unreadNotificationsCount,
      @JsonKey(name: "pagination") Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$PayloadImplCopyWithImpl<$Res>
    extends _$PayloadCopyWithImpl<$Res, _$PayloadImpl>
    implements _$$PayloadImplCopyWith<$Res> {
  __$$PayloadImplCopyWithImpl(
      _$PayloadImpl _value, $Res Function(_$PayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
    Object? unreadNotificationsCount = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$PayloadImpl(
      notifications: freezed == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationData>?,
      unreadNotificationsCount: freezed == unreadNotificationsCount
          ? _value.unreadNotificationsCount
          : unreadNotificationsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayloadImpl implements _Payload {
  const _$PayloadImpl(
      {@JsonKey(name: "notifications")
      final List<NotificationData>? notifications,
      @JsonKey(name: "unread_notifications_count")
      this.unreadNotificationsCount,
      @JsonKey(name: "pagination") this.pagination})
      : _notifications = notifications;

  factory _$PayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayloadImplFromJson(json);

  final List<NotificationData>? _notifications;
  @override
  @JsonKey(name: "notifications")
  List<NotificationData>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "unread_notifications_count")
  final int? unreadNotificationsCount;
  @override
  @JsonKey(name: "pagination")
  final Pagination? pagination;

  @override
  String toString() {
    return 'Payload(notifications: $notifications, unreadNotificationsCount: $unreadNotificationsCount, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayloadImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(
                    other.unreadNotificationsCount, unreadNotificationsCount) ||
                other.unreadNotificationsCount == unreadNotificationsCount) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notifications),
      unreadNotificationsCount,
      pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayloadImplCopyWith<_$PayloadImpl> get copyWith =>
      __$$PayloadImplCopyWithImpl<_$PayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayloadImplToJson(
      this,
    );
  }
}

abstract class _Payload implements Payload {
  const factory _Payload(
          {@JsonKey(name: "notifications")
          final List<NotificationData>? notifications,
          @JsonKey(name: "unread_notifications_count")
          final int? unreadNotificationsCount,
          @JsonKey(name: "pagination") final Pagination? pagination}) =
      _$PayloadImpl;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$PayloadImpl.fromJson;

  @override
  @JsonKey(name: "notifications")
  List<NotificationData>? get notifications;
  @override
  @JsonKey(name: "unread_notifications_count")
  int? get unreadNotificationsCount;
  @override
  @JsonKey(name: "pagination")
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$PayloadImplCopyWith<_$PayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
mixin _$NotificationData {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "read_at")
  dynamic get readAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res, NotificationData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "read_at") dynamic readAt});
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res, $Val extends NotificationData>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
    Object? readAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDataImplCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$$NotificationDataImplCopyWith(_$NotificationDataImpl value,
          $Res Function(_$NotificationDataImpl) then) =
      __$$NotificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "read_at") dynamic readAt});
}

/// @nodoc
class __$$NotificationDataImplCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res, _$NotificationDataImpl>
    implements _$$NotificationDataImplCopyWith<$Res> {
  __$$NotificationDataImplCopyWithImpl(_$NotificationDataImpl _value,
      $Res Function(_$NotificationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
    Object? readAt = freezed,
  }) {
    return _then(_$NotificationDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDataImpl implements _NotificationData {
  const _$NotificationDataImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "read_at") this.readAt});

  factory _$NotificationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "read_at")
  final dynamic readAt;

  @override
  String toString() {
    return 'NotificationData(id: $id, image: $image, title: $title, message: $message, createdAt: $createdAt, readAt: $readAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.readAt, readAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, title, message,
      createdAt, const DeepCollectionEquality().hash(readAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      __$$NotificationDataImplCopyWithImpl<_$NotificationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataImplToJson(
      this,
    );
  }
}

abstract class _NotificationData implements NotificationData {
  const factory _NotificationData(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "read_at") final dynamic readAt}) = _$NotificationDataImpl;

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$NotificationDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "read_at")
  dynamic get readAt;
  @override
  @JsonKey(ignore: true)
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
