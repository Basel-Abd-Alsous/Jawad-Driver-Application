import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../repoistory/drawer_repoistory.dart';

class DrawerUsecase {
  final DrawerRepoistory _repoistory;

  DrawerUsecase(this._repoistory);

  Future<Either<Failure, Result>> getPrivacy() async {
    return await _repoistory.getPrivacy();
  }

  Future<Either<Failure, Result>> getTerms() async {
    return await _repoistory.getTerms();
  }
}
