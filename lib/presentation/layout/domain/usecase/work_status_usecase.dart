import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/user_model.dart';
import '../repoistory/work_status_repoistory.dart';

class WorkStatusUsecase {
  final WorkStatusRepoistory workStatusRepoistory;
  WorkStatusUsecase({required this.workStatusRepoistory});

  Future<Either<Failure, Result<UserModel>>> call() async => await workStatusRepoistory.switchWorkStatus();
}
