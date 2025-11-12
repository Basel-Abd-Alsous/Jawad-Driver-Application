import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../../../layout/domain/model/user_model.dart';
import '../model/travel_requist_model.dart';
import '../repoistory/home_repoistory.dart';
import '../repoistory/profile_repoistory.dart';

class HomeUsecase {
  final HomeRepoistory homeRepoistory;
  final ProfileRepoistory profileRepoistory;
  HomeUsecase({ required this.profileRepoistory, required this.homeRepoistory});

  Future<Either<Failure, Result<String>>> broadcasting(String userId, String socitId) async => await homeRepoistory.broadcasting(userId, socitId);
  Future<Either<Failure, Result<List<TravelRequest>>>> travelRequist() async => await homeRepoistory.travelRequist();
  Future<Either<Failure, Result<TravelRequest>>> currentTravelRequist() async => await homeRepoistory.currentTravel();
  Future<Either<Failure, Unit>> approveTravelRequist(int id) async => await homeRepoistory.approveTravel(id);
  Future<Either<Failure, Unit>> rejectTravelRequist(int id) async => await homeRepoistory.rejectTravel(id);
  Future<Either<Failure, Unit>> cancelTravelRequist(int id) async => await homeRepoistory.cancelTravel(id);
  Future<Either<Failure, Result<String>>> endTravelRequist(int id, String arrived, List<dynamic> points) async =>
      await homeRepoistory.endTravel(id, arrived, points);
  Future<Either<Failure, Unit>> payTravelRequist(int id, String amount) async => await homeRepoistory.payTravel(id, amount);
  Future<Either<Failure, Unit>> arrivalTravelRequist(int id, String lat, String long) async => await homeRepoistory.arrivalTravel(id, lat, long);
  Future<Either<Failure, Unit>> startTravelRequist(int id) async => await homeRepoistory.startTravel(id);
  Future<Either<Failure, Result<UserModel>>> getProfile() async => await profileRepoistory.getUserProfile();
}
