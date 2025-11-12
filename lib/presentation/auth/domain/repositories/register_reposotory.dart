import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

import '../../../../core/constant/api_link.dart';
import '../../../../core/services/hive/box_key.dart';
import '../../../../core/errors/dio_exception.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/api_client.dart';
import '../../../../core/services/api_services/dio_helper.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../../../../injection_container.dart';
import '../model/car_model_and_color_model.dart';
import '../model/document_status_model.dart';
import '../model/document_type_model.dart';
import '../model/my_document_model.dart';
import '../model/register_status_model.dart';
import '../model/requiest_models/bank_info_model.dart';
import '../model/requiest_models/car_info_model.dart';
import '../model/requiest_models/register_requiest_model.dart';
import '../model/requiest_models/upload_document_model.dart';

abstract class RegisterReposotory {
  Future<Either<Failure, Result<String>>> register(RegisterModel registerModel);
  Future<Either<Failure, Result<RegisterStatusModel>>> registerStatus();
  Future<Either<Failure, Result<DocumentTypeModel>>> documentsType();
  Future<Either<Failure, Result<MyDocumentModel>>> myDocument();
  Future<Either<Failure, Unit>> uploadDocument(UploadDocumentModel uploadDocumentModel);
  Future<Either<Failure, Result<DocumentStatusModel>>> documentStatus();
  Future<Either<Failure, Result<CarModelAndColorModel>>> carModelAndColor();
  Future<Either<Failure, Unit>> carInfo(CarInfoModel carInfoModel);
  Future<Either<Failure, Unit>> bankInfo(BankInfoModel bankInfoModel);
}

class RegisterReposotoryImpl implements RegisterReposotory {
  final ApiClient client = ApiClient(DioHelper().dio);

  @override
  Future<Either<Failure, Result<String>>> register(RegisterModel registerRequiestModel) async {
    try {
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final registerResponse = await client.postRequest(endpoint: ApiLinks.register, language: savedLang, body: registerRequiestModel.toJson());
      if (registerResponse.response.data['status'] == false) {
        return Left(ServerFailure(message: registerResponse.response.data['message'].toString()));
      } else {
        return Right(Result.success(registerResponse.response.data['payload']['token']));
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<RegisterStatusModel>>> registerStatus() async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final registerStatusResponse = await client.getRequest(endpoint: ApiLinks.registerStatus, language: savedLang, authorization: token);
      RegisterStatusModel registerStatusModel = RegisterStatusModel.fromJson(registerStatusResponse.response.data);
      return Right(Result.success(registerStatusModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<DocumentTypeModel>>> documentsType() async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final documentstypeRespocse = await client.getRequest(endpoint: ApiLinks.documentsType, language: savedLang, authorization: token);
      DocumentTypeModel documentTypeModel = DocumentTypeModel.fromJson(documentstypeRespocse.response.data);
      return Right(Result.success(documentTypeModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<MyDocumentModel>>> myDocument() async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final myDocumentResponse = await client.getRequest(endpoint: ApiLinks.myDocuments, language: savedLang, authorization: token);
      if (myDocumentResponse.response.statusCode == 200) {
        MyDocumentModel myDocumentModel = MyDocumentModel.fromJson(myDocumentResponse.response.data);
        return Right(Result.success(myDocumentModel));
      } else {
        return Left(ServerFailure.fromResponse(myDocumentResponse.response.statusCode));
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> uploadDocument(UploadDocumentModel uploadDocumentModel) async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final uploadDocumentResponse = await client.uploadFile(
        endpoint: ApiLinks.uploadDocument,
        language: savedLang,
        document: uploadDocumentModel.document!,
        documentTypeId: uploadDocumentModel.documentTypeId!,
        authorization: token,
      );
      if (uploadDocumentResponse.response.statusCode == 200) {
        return Right(unit);
      } else {
        return Left(
          ServerFailure.fromResponse(uploadDocumentResponse.response.statusCode, message: uploadDocumentResponse.response.data['message'].toString()),
        );
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<DocumentStatusModel>>> documentStatus() async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;

      final documentStatusResponse = await client.getRequest(endpoint: ApiLinks.documentStatus, language: savedLang, authorization: token);
      if (documentStatusResponse.response.statusCode == 200) {
        DocumentStatusModel documentStatusModel = DocumentStatusModel.fromJson(documentStatusResponse.response.data);
        if (documentStatusModel.data?.uploaded != documentStatusModel.data?.totalRequired) {
          return Left(ServerFailure(message: 'Please upload all required documents'));
        }
        return Right(Result.success(documentStatusModel));
      } else {
        return Left(ServerFailure.fromResponse(documentStatusResponse.response.statusCode));
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Result<CarModelAndColorModel>>> carModelAndColor() async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      final carModelAndColorResponse = await client.getRequest(endpoint: ApiLinks.vehicles, language: savedLang, authorization: token);
      CarModelAndColorModel carModelAndColorModel = CarModelAndColorModel.fromJson(carModelAndColorResponse.response.data);
      return Right(Result.success(carModelAndColorModel));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> carInfo(CarInfoModel carInfoModel) async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      await client.postRequest(endpoint: ApiLinks.carInfo, language: savedLang, body: carInfoModel.toJson(), authorization: token);
      return Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> bankInfo(BankInfoModel bankInfoModel) async {
    try {
      String? token = 'Bearer ${await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token)}';
      final savedLang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;
      await client.postRequest(endpoint: ApiLinks.bankInfo, language: savedLang, body: bankInfoModel.toJson(), authorization: token);
      return Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
