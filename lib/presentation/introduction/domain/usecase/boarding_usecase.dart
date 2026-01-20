import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/boarding_model.dart';
import '../repoistory/boarding_repo.dart';

class BoardingUsecase {
  final BoardingRepoistory  repoistory;
  BoardingUsecase(this. repoistory);

  Future<Either<Failure, Result<BoardingModel>>> getBoardings() async => await repoistory.getBoardings();
}
