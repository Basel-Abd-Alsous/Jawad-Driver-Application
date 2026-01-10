part of 'notifications_cubit.dart';

@immutable
abstract class NotificationsState {}

class NotificationsInitial extends NotificationsState {}

class NotificationsError extends NotificationsState {
  final String errorMessage;

  NotificationsError({required this.errorMessage});
}

class NotificationsNewPayLoad extends NotificationsState {
  final NotificationPayloadModel payloadModel;

  NotificationsNewPayLoad({required this.payloadModel});
}
