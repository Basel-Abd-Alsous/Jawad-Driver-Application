import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/params/feedback_param.dart';
import '../repoistory/drawer_repoistory.dart';

class DrawerUsecase {
  final DrawerRepoistory _repoistory;

  DrawerUsecase(this._repoistory);

  Future<Either<Failure, Result>> getPrivacy() async => await _repoistory.getPrivacy();
  Future<Either<Failure, Result>> getTerms() async => await _repoistory.getTerms();
  Future<Either<Failure, Result>> getContactUs() async => await _repoistory.getContactUs();
  Future<Either<Failure, Result>> getFeedbackList() async => await _repoistory.getFeedbackList();
  Future<Either<Failure, Result>> sendFeedback(FeedbackParam param) async => await _repoistory.sendFeedback(param);
}
