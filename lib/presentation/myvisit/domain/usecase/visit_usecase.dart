import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/travel_track_model.dart';
import '../model/visit_details_model.dart';
import '../model/visit_model.dart';
import '../repoistory/visit_repoistory.dart';

class VisitUsecase {
  final VisitRepoistory visitRepository;
  VisitUsecase({required this.visitRepository});

  Future<Either<Failure, Result<VisitModel>>> getAllPreviousVisit(int page) async => await visitRepository.getAllPreviousVisit(page);
  Future<Either<Failure, Result<VisitModel>>> getAllCancelVisit(int page) async => await visitRepository.getAllCancelVisit(page);
  Future<Either<Failure, Result<VisitDetailsModel>>> getVisitDetails(int id) async => await visitRepository.getVisitDetails(id);
  Future<Either<Failure, Result<TravelTrackModel>>> getTravelTrack(int id) async => await visitRepository.getTravelTrack(id);
  Future<Either<Failure, Unit>> addRate(int id, double rate) async => await visitRepository.addRate(id, rate);
}
