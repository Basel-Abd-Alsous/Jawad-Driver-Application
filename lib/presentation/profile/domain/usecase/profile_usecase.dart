import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../layout/domain/model/user_model.dart';
import '../model/profile_param.dart';
import '../repoistory/profile_repoistory.dart';

class ProfileUsecase {
  final ProfileRepository profileRepository;
  ProfileUsecase({required this.profileRepository});

  Future<Either<Failure, Driver>> updateProfileData({required ProfileParam profileParams}) async => await profileRepository.updateProfileData(profileParams);
}
