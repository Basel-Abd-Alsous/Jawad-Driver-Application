import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/constant/api_link.dart';
import '../../../../core/services/hive/box_key.dart';
import '../../../../core/errors/dio_exception.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/api_client.dart';
import '../../../../core/services/api_services/dio_helper.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../../../../injection_container.dart';
import '../model/user_model.dart';

abstract class WorkStatusRepoistory {
  Future<Either<Failure, Result<UserModel>>> switchWorkStatus();
}

class WorkStatusRepoistoryImpl implements WorkStatusRepoistory {
  @override
  Future<Either<Failure, Result<UserModel>>> switchWorkStatus() async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final responseWorkStatus = await client.postRequest(endpoint: ApiLinks.workStatus, language: savedLang, authorization: token);
      if (responseWorkStatus.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseWorkStatus.response.data['code'], message: responseWorkStatus.response.data['message']));
      }
      UserModel userModel = UserModel.fromJson(responseWorkStatus.data);
      return Right(Result.success(userModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
