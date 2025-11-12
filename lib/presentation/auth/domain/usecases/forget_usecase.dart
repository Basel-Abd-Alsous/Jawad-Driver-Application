import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/requiest_models/new_password_model.dart';
import '../model/requiest_models/send_otp_model.dart';
import '../model/requiest_models/verify_otp_model.dart';
import '../repositories/forget_repository.dart';

class ForgetUsecase {
  final ForgetRepository forgetRepository;
  ForgetUsecase({required this.forgetRepository});

  Future<Either<Failure, Unit>> sendOtp(SendOTPModel sendOTPModel) async {
    return await forgetRepository.sendOtp(sendOTPModel);
  }

  Future<Either<Failure, Unit>> virefyOtp(VerifyOTPModel verifyOTPModel) async {
    return await forgetRepository.virefyOtp(verifyOTPModel);
  }

  Future<Either<Failure, Result<String>>> newPassword(NewPasswordModel newPasswordModel) async {
    return await forgetRepository.newPassword(newPasswordModel);
  }
}
