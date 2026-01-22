import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

import '../../../../core/constant/api_link.dart';
import '../../../../core/services/hive/box_key.dart';
import '../../../../core/errors/dio_exception.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/api_client.dart';
import '../../../../core/services/api_services/dio_helper.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../../../../injection_container.dart';
import '../model/travel_requist_model.dart';

abstract class HomeRepoistory {
  Future<Either<Failure, Result<String>>> broadcasting(String userId, String socitId);
  Future<Either<Failure, Result<List<TravelRequest>>>> travelRequist();
  Future<Either<Failure, Unit>> approveTravel(int id);
  Future<Either<Failure, Unit>> rejectTravel(int id);
  Future<Either<Failure, Unit>> cancelTravel(int id);
  Future<Either<Failure, Unit>> arrivalTravel(int id, String lat, String long);
  Future<Either<Failure, Unit>> startTravel(int id);
  Future<Either<Failure, Result<TravelRequest>>> endTravel(int id, String arrived, String arrivedCity, String puckupCity, List<dynamic> points);
  Future<Either<Failure, Unit>> payTravel(int id, String amount);
  Future<Either<Failure, Result<TravelRequest>>> currentTravel();
}

class HomeReoistoryImpl implements HomeRepoistory {
  @override
  Future<Either<Failure, Result<String>>> broadcasting(String userId, String socitId) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final responseWorkStatus = await client.postRequest(
        endpoint: ApiLinks.broadcasting,
        language: savedLang,
        body: {'channel_name': 'private-driver.$userId', 'socket_id': socitId},
        authorization: token,
      );
      if (responseWorkStatus.response.statusCode != 200) {
        return Left(ServerFailure.fromResponse(responseWorkStatus.response.statusCode, message: responseWorkStatus.response.data['message']));
      }
      return Right(Result.success(responseWorkStatus.response.data['auth']));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<List<TravelRequest>>>> travelRequist() async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final responseTravels = await client.getRequest(endpoint: ApiLinks.travelRequest, language: savedLang, authorization: token);
      if (responseTravels.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseTravels.response.data['code'], message: responseTravels.response.data['message']));
      }
      TravelRequistModel travelRequistModel = TravelRequistModel.fromJson(responseTravels.response.data);
      return Right(Result.success(travelRequistModel.payload));
    } on DioException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      return Left(ServerFailure.fromDioError(e));
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<TravelRequest>>> currentTravel() async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final responseTravels = await client.getRequest(endpoint: ApiLinks.currentTravel, language: savedLang, authorization: token);
      if (responseTravels.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseTravels.response.data['code'], message: responseTravels.response.data['message']));
      }
      TravelRequest? travelRequistModel;
      if (responseTravels.response.data['payload'] == null) {
        travelRequistModel = null;
      } else {
        travelRequistModel = TravelRequest.fromJson(responseTravels.response.data['payload']);
      }
      return Right(Result.success(travelRequistModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> approveTravel(int id) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final responseWorkStatus = await client.postRequest(endpoint: ApiLinks.approveTravel + id.toString(), language: savedLang, authorization: token);
      if (responseWorkStatus.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseWorkStatus.response.statusCode, message: responseWorkStatus.response.data['message']));
      }
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> rejectTravel(int id) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final responseWorkStatus = await client.postRequest(endpoint: ApiLinks.rejectTravel + id.toString(), language: savedLang, authorization: token);
      if (responseWorkStatus.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseWorkStatus.response.statusCode, message: responseWorkStatus.response.data['message']));
      }
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> cancelTravel(int id) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final responseWorkStatus = await client.postRequest(endpoint: ApiLinks.cancelTravel + id.toString(), language: savedLang, authorization: token);
      if (responseWorkStatus.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseWorkStatus.response.statusCode, message: responseWorkStatus.response.data['message']));
      }
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> arrivalTravel(int id, String lat, String long) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final responseWorkStatus = await client.postRequest(endpoint: ApiLinks.arrivedTravel + id.toString(), language: savedLang, authorization: token, body: {'latitude': lat, 'longitude': long});
      if (responseWorkStatus.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseWorkStatus.response.statusCode, message: responseWorkStatus.response.data['message']));
      }
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> startTravel(int id) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final responseWorkStatus = await client.postRequest(endpoint: ApiLinks.startTravel + id.toString(), language: savedLang, authorization: token);
      if (responseWorkStatus.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseWorkStatus.response.statusCode, message: responseWorkStatus.response.data['message']));
      }
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<TravelRequest>>> endTravel(int id, String arrived, String arrivedCity, String puckupCity, List<dynamic> points) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final responseWorkStatus = await client.postRequest(
        endpoint: ApiLinks.endTravel + id.toString(),
        language: savedLang,
        authorization: token,
        body: {'arrive_location': arrived, "pickup_city_name": puckupCity, "arrive_city_name": arrivedCity, 'track': points},
      );
      if (responseWorkStatus.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseWorkStatus.response.statusCode, message: responseWorkStatus.response.data['message']));
      }
      TravelRequest? travelRequistModel;
      if (responseWorkStatus.response.data['payload'] == null) {
        travelRequistModel = null;
      } else {
        travelRequistModel = TravelRequest.fromJson(responseWorkStatus.response.data['payload']);
      }
      return Right(Result.success(travelRequistModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> payTravel(int id, String amount) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final responseWorkStatus = await client.postRequest(endpoint: ApiLinks.payTravel + id.toString(), language: savedLang, authorization: token, body: {'amount': amount});
      if (responseWorkStatus.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(responseWorkStatus.response.statusCode, message: responseWorkStatus.response.data['message']));
      }
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
