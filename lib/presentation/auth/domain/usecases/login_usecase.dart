import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/requiest_models/login_requiest_model.dart';
import '../repositories/login_repository.dart';

class LoginUseCase {
  final LoginRepository loginRepository;

  LoginUseCase({required this.loginRepository});

  Future<Either<Failure, Result<Unit>>> login(LoginRequiestModel loginRequiestModel) async => await loginRepository.login(loginRequiestModel);
  Future<Either<Failure, Result<Map<String, dynamic>>>> verifyOtpLogin(String mobile, String otp, String type) async => await loginRepository.verifyOtpLogin(mobile, otp, type);
}
