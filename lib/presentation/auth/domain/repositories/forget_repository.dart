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
import '../model/requiest_models/new_password_model.dart';
import '../model/requiest_models/send_otp_model.dart';
import '../model/requiest_models/verify_otp_model.dart';

abstract class ForgetRepository {
  Future<Either<Failure, Unit>> sendOtp(SendOTPModel sendOTPModel);
  Future<Either<Failure, Unit>> virefyOtp(VerifyOTPModel verifyOTPModel);
  Future<Either<Failure, Result<String>>> newPassword(NewPasswordModel newPasswordModel);
}

class ForgetRepositoryImpl implements ForgetRepository {
  @override
  Future<Either<Failure, Unit>> sendOtp(SendOTPModel sendOTPModel) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;

      await client.postRequest(endpoint: ApiLinks.sendOtp, language: savedLang, body: sendOTPModel.toJson());
      return Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> virefyOtp(VerifyOTPModel verifyOTPModel) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      await client.postRequest(endpoint: ApiLinks.verifyOtp, language: savedLang, body: verifyOTPModel.toJson());
      return Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<String>>> newPassword(NewPasswordModel newPasswordModel) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final newPasswordResponse = await client.postRequest(endpoint: ApiLinks.newPassword, language: savedLang, body: newPasswordModel.toJson());
      return Right(Result.success(newPasswordResponse.response.data['payload']['token']));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
