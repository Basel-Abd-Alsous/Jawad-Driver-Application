import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/car_model_and_color_model.dart';
import '../model/document_status_model.dart';
import '../model/document_type_model.dart';
import '../model/my_document_model.dart';
import '../model/register_status_model.dart';
import '../model/requiest_models/bank_info_model.dart';
import '../model/requiest_models/car_info_model.dart';
import '../model/requiest_models/register_requiest_model.dart';
import '../model/requiest_models/upload_document_model.dart';
import '../repositories/register_reposotory.dart';

class RegisterUsecase {
  final RegisterReposotory registerReposotory;
  RegisterUsecase({required this.registerReposotory});

  Future<Either<Failure, Result<Unit>>> register(RegisterModel registerModel) async => await registerReposotory.register(registerModel);
  Future<Either<Failure, Result<String>>> verifyOtpRegister(String mobile, String otp, String type) async => await registerReposotory.verifyOtpRegister(mobile, otp, type);
  Future<Either<Failure, Result<RegisterStatusModel>>> registerStatus() async => await registerReposotory.registerStatus();
  Future<Either<Failure, Result<DocumentTypeModel>>> documentsType() async => await registerReposotory.documentsType();
  Future<Either<Failure, Result<MyDocumentModel>>> myDocument() async => await registerReposotory.myDocument();
  Future<Either<Failure, Unit>> uploadDocument(UploadDocumentModel uploadDocumentModel) async => await registerReposotory.uploadDocument(uploadDocumentModel);
  Future<Either<Failure, Result<DocumentStatusModel>>> documentStatus() async => await registerReposotory.documentStatus();
  Future<Either<Failure, Unit>> carInfo(CarInfoModel carInfoModel) async => await registerReposotory.carInfo(carInfoModel);
  Future<Either<Failure, Unit>> bankInfo(BankInfoModel bankInfoModel) async => await registerReposotory.bankInfo(bankInfoModel);
  Future<Either<Failure, Result<CarModelAndColorModel>>> carModelAndColor() async => await registerReposotory.carModelAndColor();
}
