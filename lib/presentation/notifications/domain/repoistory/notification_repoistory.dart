import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/constant/api_link.dart';
import '../../../../core/errors/dio_exception.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/api_client.dart';
import '../../../../core/services/api_services/dio_helper.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../../../../core/services/hive/box_key.dart';
import '../../../../injection_container.dart';
import '../model/notifications_model.dart';

abstract class NotificationRepoistory {
  Future<Either<Failure, Result<NotificationsModel>>> getAllNotifications(int page);
}

class NotificationRepoistoryImpl implements NotificationRepoistory {
  @override
  Future<Either<Failure, Result<NotificationsModel>>> getAllNotifications(int page) async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final notificationResponse = await client.getRequest(endpoint: '${ApiLinks.notification}?page=$page', language: savedLang, authorization: token);
      if (notificationResponse.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(notificationResponse.response.data['code'], message: notificationResponse.response.data['message']));
      }
      NotificationsModel transactionsModel = NotificationsModel.fromJson(notificationResponse.response.data);
      return Right(Result.success(transactionsModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
