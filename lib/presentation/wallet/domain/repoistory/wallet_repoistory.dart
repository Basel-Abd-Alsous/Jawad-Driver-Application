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
import '../model/transactions_model.dart';

abstract class WalletRepoistory {
  Future<Either<Failure, Result<String>>> chargerWallet(String balance, String? phone, String type);
  Future<Either<Failure, Result<Unit>>> paymentCallback(String id, String otp);
  Future<Either<Failure, Unit>> cashRequest(String amount);
  Future<Either<Failure, Result<TransactionsModel>>> transactionsWallet(int page);
}

class WalletRepoistoryImpl implements WalletRepoistory {
  @override
  Future<Either<Failure, Result<String>>> chargerWallet(String balance, String? phone, String type) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final loginResponse = await client.postRequest(
        endpoint: ApiLinks.chargerWallet,
        language: savedLang,
        body: {'balance': balance, "phone": phone, "payment_method": type},
        authorization: token,
      );
      if (loginResponse.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(loginResponse.response.data['code'], message: loginResponse.response.data['message']));
      }
      if (type == 'credit') {
        return Right(Result.success(loginResponse.response.data['payload']['payment_url']));
      } else {
        return Right(Result.success(loginResponse.response.data['payload']['request_id']));
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<Unit>>> paymentCallback(String id, String otp) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final loginResponse = await client.postRequest(
        endpoint: ApiLinks.paymentCallback,
        language: savedLang,
        body: {'request_id': id, 'otp': otp},
        authorization: token,
      );
      if (loginResponse.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(loginResponse.response.data['code'], message: loginResponse.response.data['message']));
      }
      return Right(Result.success(unit));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<TransactionsModel>>> transactionsWallet(int page) async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final loginResponse = await client.getRequest(endpoint: '${ApiLinks.transactionWallet}?page=$page', language: savedLang, authorization: token);
      if (loginResponse.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(loginResponse.response.data['code'], message: loginResponse.response.data['message']));
      }
      TransactionsModel transactionsModel = TransactionsModel.fromJson(loginResponse.response.data);
      return Right(Result.success(transactionsModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> cashRequest(String amount) async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final loginResponse = await client.postRequest(
        endpoint: ApiLinks.cashRequest,
        authorization: token,
        language: savedLang,
        body: {'amount': amount, 'method': 'bank'},
      );
      if (loginResponse.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(loginResponse.response.data['code'], message: loginResponse.response.data['message']));
      }
      return Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
