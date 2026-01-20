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
import '../model/boarding_model.dart';

abstract class BoardingRepoistory {
  Future<Either<Failure, Result<BoardingModel>>> getBoardings();
}

class BoardingRepositoryImp implements BoardingRepoistory {
  @override
  Future<Either<Failure, Result<BoardingModel>>> getBoardings() async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final result = await client.getRequest(endpoint: ApiLinks.boarding, language: savedLang);
      if (result.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(result.response.data['code'], message: result.response.data['message']));
      }
      BoardingModel boardingModel = BoardingModel.fromJson(result.data);
      return Right(Result.success(boardingModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
