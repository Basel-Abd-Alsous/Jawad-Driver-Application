import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/requiest_models/login_requiest_model.dart';
import '../repositories/login_repository.dart';

class LoginUseCase {
  final LoginRepository loginRepository;

  LoginUseCase({required this.loginRepository});

  Future<Either<Failure, Result<Map<String , dynamic>>>> login(LoginRequiestModel loginRequiestModel) async {
    return await loginRepository.login(loginRequiestModel);
  }
}
