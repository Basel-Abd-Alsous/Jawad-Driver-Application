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
import '../model/requiest_models/login_requiest_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, Result<Map<String, dynamic>>>> login(LoginRequiestModel loginRequiestModel);
}

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<Either<Failure, Result<Map<String, dynamic>>>> login(LoginRequiestModel loginRequiestModel) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final loginResponse = await client.postRequest(endpoint: ApiLinks.login, language: savedLang, body: loginRequiestModel.toJson());
      if (loginResponse.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(loginResponse.response.data['code'], message: loginResponse.response.data['message']));
      }
      return Right(
        Result.success({
          'token': loginResponse.response.data['payload']['token'],
          'registrationStatus': loginResponse.response.data['payload']['user']['registration_status'],
        }),
      );
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
