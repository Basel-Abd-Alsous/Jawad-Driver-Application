part of 'notifications_cubit.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;

  // Transactions State
  const factory NotificationState.loadingNotifications() = _LoadingNotifications;
  const factory NotificationState.loadedNotifications( {required NotificationsModel data , @Default(false) bool? hasMore}) = _LoadedNotifications;
  const factory NotificationState.errorNotifications(String message) = _ErrorNotifications;

}
