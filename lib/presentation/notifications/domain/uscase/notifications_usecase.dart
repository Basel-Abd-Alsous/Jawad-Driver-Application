import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/notifications_model.dart';
import '../repoistory/notification_repoistory.dart';

class NotificationsUsecase {
  final NotificationRepoistory notificationRepoiory;
  NotificationsUsecase({required this.notificationRepoiory});

  Future<Either<Failure, Result<NotificationsModel>>> call(int page) async => await notificationRepoiory.getAllNotifications(page);
}
