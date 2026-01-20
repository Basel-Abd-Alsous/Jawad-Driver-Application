import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_ce/hive_ce.dart';

import '../../../../core/constant/api_link.dart';
import '../../../../core/errors/dio_exception.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/api_client.dart';
import '../../../../core/services/api_services/dio_helper.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../../../../core/services/hive/box_key.dart';
import '../../../../injection_container.dart';
import '../model/chat_model.dart';

abstract class ChatRepoistory {
  Future<Either<Failure, Unit>> sendMessage(int id, String message);
  Future<Either<Failure, Result<ChatModel>>> getMessages(int id);
}

class ChatRepoistoryImpl implements ChatRepoistory {
  @override
  Future<Either<Failure, Result<ChatModel>>> getMessages(int id) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final responseWorkStatus = await client.getRequest(endpoint: '${ApiLinks.chat}$id', language: savedLang, authorization: token);
      if (responseWorkStatus.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseWorkStatus.response.data['code'], message: responseWorkStatus.response.data['message']));
      }
      ChatModel userModel = ChatModel.fromJson(responseWorkStatus.data);
      return Right(Result.success(userModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> sendMessage(int id, String message) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final responseWorkStatus = await client.postRequest(endpoint: ApiLinks.sendMessage, authorization: token, language: savedLang, body: {"chat_channel_id": id, "message": message});
      if (responseWorkStatus.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseWorkStatus.response.data['code'], message: responseWorkStatus.response.data['message']));
      }
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
