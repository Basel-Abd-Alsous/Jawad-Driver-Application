import 'package:get_it/get_it.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'core/services/app.service.dart';
import 'core/services/hive/hive.service.dart';
import 'presentation/auth/controller/forget/forget_cubit.dart';
import 'presentation/auth/controller/login/login_cubit.dart';
import 'presentation/auth/controller/register/register_cubit.dart';
import 'presentation/auth/domain/repositories/forget_repository.dart';
import 'presentation/auth/domain/repositories/login_repository.dart';
import 'presentation/auth/domain/repositories/register_reposotory.dart';
import 'presentation/auth/domain/usecases/forget_usecase.dart';
import 'presentation/auth/domain/usecases/login_usecase.dart';
import 'presentation/auth/domain/usecases/register_usecase.dart';
import 'presentation/chat/controller/chat_cubit.dart';
import 'presentation/chat/domain/usecase/chat_usecase.dart';
import 'presentation/drawer/controller/drawer_cubit.dart';
import 'presentation/drawer/domain/repoistory/drawer_repoistory.dart';
import 'presentation/drawer/domain/usecase/drawer_usecase.dart';
import 'presentation/home/controller/home_cubit.dart';
import 'presentation/chat/domain/repoistory/chat_repoistory.dart';
import 'presentation/home/domain/repoistory/home_repoistory.dart';
import 'presentation/home/domain/repoistory/profile_repoistory.dart';
import 'presentation/home/domain/usecase/home_usecase.dart';
import 'presentation/introduction/controller/introductions_bloc.dart';
import 'presentation/layout/controller/layout_cubit.dart';
import 'presentation/layout/domain/repoistory/work_status_repoistory.dart';
import 'presentation/layout/domain/usecase/work_status_usecase.dart';
import 'presentation/myvisit/controller/visit/visit_cubit.dart';
import 'presentation/myvisit/controller/visit_details/visit_details_cubit.dart';
import 'presentation/myvisit/domain/repoistory/visit_repoistory.dart';
import 'presentation/myvisit/domain/usecase/visit_usecase.dart';
import 'presentation/notifications/controller/notifications_cubit.dart';
import 'presentation/notifications/domain/repoistory/notification_repoistory.dart';
import 'presentation/notifications/domain/uscase/notifications_usecase.dart';
import 'presentation/profile/controller/profile_cubit.dart';
import 'presentation/profile/domain/repoistory/profile_repoistory.dart';
import 'presentation/profile/domain/usecase/profile_usecase.dart';
import 'presentation/splash/controller/splash_bloc.dart';
import 'presentation/wallet/controller/wallet_cubit.dart';
import 'presentation/wallet/domain/repoistory/wallet_repoistory.dart';
import 'presentation/wallet/domain/usecase/wallet_usecase.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  //======================== Dio ===============================================
  sl.registerLazySingleton(() => sl<HiveServices>().init());
  sl.registerSingleton<AppServices>(AppServices());
  //======================== Hive Boxes ========================================
  AndroidOptions getAndroidOptions() => const AndroidOptions(encryptedSharedPreferences: true);
  sl.registerSingleton<FlutterSecureStorage>(FlutterSecureStorage(aOptions: getAndroidOptions()));
  //======================== Bloc ========================================
  sl.registerFactory(() => IntroductionsBloc());
  sl.registerFactory(() => SplashBloc());
  sl.registerFactory(() => LoginCubit(loginUseCase: sl(), registerUsecase: sl()));
  sl.registerFactory(() => ForgetCubit(forgetUsecase: sl()));
  sl.registerFactory(() => RegisterCubit(registerUsecase: sl()));
  sl.registerFactory(() => LayoutCubit());
  sl.registerFactory(() => HomeCubit(homeUsecase: sl(), workStatusUsecase: sl()));
  sl.registerFactory(() => WalletCubit(walletUsecase: sl(), homeUsecase: sl()));
  sl.registerFactory(() => NotificationCubit(notificationsUsecase: sl()));
  sl.registerFactory(() => VisitCubit(visitUsecase: sl()));
  sl.registerFactory(() => VisitDetailsCubit(visitUsecase: sl()));
  sl.registerFactory(() => ProfileCubit(profileUsecase: sl()));
  sl.registerFactory(() => ChatCubit(chatUsecase: sl(), homeUsecase: sl()));
  sl.registerFactory(() => DrawerCubit(usecase: sl()));
  //======================== UseCase ========================================
  sl.registerLazySingleton(() => LoginUseCase(loginRepository: sl()));
  sl.registerLazySingleton(() => RegisterUsecase(registerReposotory: sl()));
  sl.registerLazySingleton(() => ForgetUsecase(forgetRepository: sl()));
  sl.registerLazySingleton(() => WorkStatusUsecase(workStatusRepoistory: sl()));
  sl.registerLazySingleton(() => HomeUsecase(profileRepoistory: sl(), homeRepoistory: sl()));
  sl.registerLazySingleton(() => WalletUsecase(walletRepoistory: sl()));
  sl.registerLazySingleton(() => NotificationsUsecase(notificationRepoiory: sl()));
  sl.registerLazySingleton(() => VisitUsecase(visitRepository: sl()));
  sl.registerLazySingleton(() => ChatUsecase(chatRepoistory: sl()));
  sl.registerLazySingleton(() => ProfileUsecase(profileRepository: sl()));
  sl.registerLazySingleton(() => DrawerUsecase(sl()));
  //======================== Repositories ======================================
  sl.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl());
  sl.registerLazySingleton<RegisterReposotory>(() => RegisterReposotoryImpl());
  sl.registerLazySingleton<ForgetRepository>(() => ForgetRepositoryImpl());
  sl.registerLazySingleton<WorkStatusRepoistory>(() => WorkStatusRepoistoryImpl());
  sl.registerLazySingleton<ProfileRepoistory>(() => ProfileRepoistoryImpl());
  sl.registerLazySingleton<HomeRepoistory>(() => HomeReoistoryImpl());
  sl.registerLazySingleton<WalletRepoistory>(() => WalletRepoistoryImpl());
  sl.registerLazySingleton<NotificationRepoistory>(() => NotificationRepoistoryImpl());
  sl.registerLazySingleton<VisitRepoistory>(() => VisitRepoistoryImpl());
  sl.registerLazySingleton<ChatRepoistory>(() => ChatRepoistoryImpl());
  sl.registerLazySingleton<ProfileRepository>(() => ProfileRepositoryImpl());
  sl.registerLazySingleton<DrawerRepoistory>(() => DrawerRepositoryImp());
}
