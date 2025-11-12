// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationsModelImpl _$$NotificationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationsModelImpl(
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      payload: json['payload'] == null
          ? null
          : Payload.fromJson(json['payload'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$$NotificationsModelImplToJson(
        _$NotificationsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_$PayloadImpl _$$PayloadImplFromJson(Map<String, dynamic> json) =>
    _$PayloadImpl(
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => NotificationData.fromJson(e as Map<String, dynamic>))
          .toList(),
      unreadNotificationsCount:
          (json['unread_notifications_count'] as num?)?.toInt(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayloadImplToJson(_$PayloadImpl instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'unread_notifications_count': instance.unreadNotificationsCount,
      'pagination': instance.pagination,
    };

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataImpl(
      id: json['id'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      readAt: json['read_at'],
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'message': instance.message,
      'created_at': instance.createdAt?.toIso8601String(),
      'read_at': instance.readAt,
    };
