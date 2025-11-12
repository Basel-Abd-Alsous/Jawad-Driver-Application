import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

import '../../../../core/constant/api_link.dart';
import '../../../../core/errors/dio_exception.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/api_client.dart';
import '../../../../core/services/api_services/dio_helper.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../../../../core/services/hive/box_key.dart';
import '../../../../injection_container.dart';

abstract class DrawerRepoistory {
  Future<Either<Failure, Result<String>>> getPrivacy();
  Future<Either<Failure, Result<String>>> getTerms();
}

class DrawerRepositoryImp implements DrawerRepoistory {
  @override
  Future<Either<Failure, Result<String>>> getPrivacy() async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final result = await client.getRequest(endpoint: ApiLinks.privacy, language: savedLang, authorization: token);
      if (result.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(result.response.data['code'], message: result.response.data['message']));
      }
      return Right(Result.success(result.response.data['payload']['description']));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<String>>> getTerms() async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final result = await client.getRequest(endpoint: ApiLinks.terms, language: savedLang, authorization: token);
      if (result.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(result.response.data['code'], message: result.response.data['message']));
      }
      return Right(Result.success(result.response.data['payload']['description']));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
