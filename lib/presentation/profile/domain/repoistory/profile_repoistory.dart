import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

import '../../../../core/constant/api_link.dart';
import '../../../../core/errors/dio_exception.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/api_client.dart';
import '../../../../core/services/api_services/dio_helper.dart';
import '../../../../core/services/hive/box_key.dart';
import '../../../../injection_container.dart';
import '../../../layout/domain/model/user_model.dart';
import '../model/profile_param.dart';

abstract class ProfileRepository {
  Future<Either<Failure, Driver>> updateProfileData(ProfileParam profileParams);
}

class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Either<Failure, Driver>> updateProfileData(ProfileParam profileParams) async {
    try {
      final ApiClient client = ApiClient(DioHelper().dio);

      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';

      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;

      final file = await MultipartFile.fromFile(profileParams.profileImage!.path, filename: profileParams.profileImage!.path.split('/').last);

      final result = await client.uploadFile2(
        endpoint: ApiLinks.updateProfile,
        authorization: token,
        language: savedLang,
        profileImage: file,
        firstName: profileParams.firstName,
        lastName: profileParams.lastName,
        email: profileParams.email,
      );

      if (result.response.data['code'] != 200) {
        return Left(ServerFailure.fromResponse(result.response.data['code'], message: result.response.data['message']));
      }

      Driver driver = Driver.fromJson(result.response.data['payload']['driver']);

      return Right(driver);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
