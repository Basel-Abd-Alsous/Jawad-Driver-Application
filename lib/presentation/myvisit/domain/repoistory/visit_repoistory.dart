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
import '../model/travel_track_model.dart';
import '../model/visit_details_model.dart';
import '../model/visit_model.dart';

abstract class VisitRepoistory {
  Future<Either<Failure, Result<VisitModel>>> getAllPreviousVisit(int page);
  Future<Either<Failure, Result<VisitModel>>> getAllCancelVisit(int page);
  Future<Either<Failure, Result<VisitDetailsModel>>> getVisitDetails(int id);
  Future<Either<Failure, Result<TravelTrackModel>>> getTravelTrack(int id);
  Future<Either<Failure, Unit>> addRate(int id, double rate);
}

class VisitRepoistoryImpl implements VisitRepoistory {
  @override
  Future<Either<Failure, Result<VisitModel>>> getAllPreviousVisit(int page) async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final result = await client.getRequest(endpoint: '${ApiLinks.completedTravels}$page', language: savedLang, authorization: token);
      if (result.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(result.response.data['code'], message: result.response.data['message']));
      }
      VisitModel visitModel = VisitModel.fromJson(result.response.data);
      return Right(Result.success(visitModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<VisitModel>>> getAllCancelVisit(int page) async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final result = await client.getRequest(endpoint: '${ApiLinks.canceledTravels}$page', language: savedLang, authorization: token);
      if (result.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(result.response.data['code'], message: result.response.data['message']));
      }
      VisitModel visitModel = VisitModel.fromJson(result.response.data);
      return Right(Result.success(visitModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<VisitDetailsModel>>> getVisitDetails(int id) async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final result = await client.getRequest(endpoint: '${ApiLinks.travelDetails}$id', language: savedLang, authorization: token);
      if (result.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(result.response.data['code'], message: result.response.data['message']));
      }
      VisitDetailsModel visitModel = VisitDetailsModel.fromJson(result.response.data);
      return Right(Result.success(visitModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<TravelTrackModel>>> getTravelTrack(int id) async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final result = await client.getRequest(endpoint: '${ApiLinks.travelTrack}$id', language: savedLang, authorization: token);
      if (result.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(result.response.data['code'], message: result.response.data['message']));
      }
      TravelTrackModel visitModel = TravelTrackModel.fromJson(result.response.data);
      return Right(Result.success(visitModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> addRate(int id, double rate) async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final result = await client.postRequest(endpoint: '${ApiLinks.rateTravel}$id', language: savedLang, authorization: token, body: {"rating": rate});
      if (result.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(result.response.data['code'], message: result.response.data['message']));
      }
      return Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
