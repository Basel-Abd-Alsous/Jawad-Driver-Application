import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../wallet/domain/model/transactions_model.dart';

part 'notifications_model.freezed.dart';
part 'notifications_model.g.dart';

@freezed
class NotificationsModel with _$NotificationsModel {
  const factory NotificationsModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "payload") Payload? payload,
    @JsonKey(name: "isSuccess") bool? isSuccess,
  }) = _NotificationsModel;

  factory NotificationsModel.fromJson(Map<String, dynamic> json) => _$NotificationsModelFromJson(json);
}

@freezed
class Payload with _$Payload {
  const factory Payload({
    @JsonKey(name: "notifications") List<NotificationData>? notifications,
    @JsonKey(name: "unread_notifications_count") int? unreadNotificationsCount,
    @JsonKey(name: "pagination") Pagination? pagination,
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}

@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "read_at") dynamic readAt,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) => _$NotificationDataFromJson(json);
}
