import 'dart:async';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:logger/logger.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'core/services/analytics_service.dart';
import 'l10n/l10n.dart';
import 'firebase_options.dart';
import 'core/utils/color.dart';
import 'core/router/routes.dart';
import 'injection_container.dart';
import 'core/services/app.service.dart';
import 'core/observer/block_observer.dart';
import 'core/services/hive/hive.service.dart';
import 'core/cubits/theme_cubit/theme.cubit.dart';
import 'core/cubits/token_cubit/token_cubit.dart';
import 'core/cubits/internet_cubit/internet_cubit.dart';
import 'core/cubits/localization_cubit/localization.cubit.dart';
import 'core/cubits/notifications_cubit/notifications_cubit.dart';
import 'presentation/auth/controller/register/register_cubit.dart';

var logger = Logger(printer: PrettyPrinter(methodCount: 2, errorMethodCount: 8, lineLength: 120, colors: true, printEmojis: true));
void main() {
  
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      await AnalyticsService.instance.init(AppType.driver);
      bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
      if (!isAllowed) {
        await AwesomeNotifications().requestPermissionToSendNotifications();
      }
      await HiveServices().init();
      await initGetIt();
      await ScreenUtil.ensureScreenSize();
      const String onesignalId = "adb5232c-3da7-47cc-a498-a74fc9531137";
      OneSignal.initialize(onesignalId);
      OneSignal.Notifications.requestPermission(true);
      Bloc.observer = AppBlocObserver();
      await sl<AppServices>().initAppServices();
      runApp(const MyApp());
    },
    (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColor.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: AppColor.black,
        systemNavigationBarDividerColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => LanguageCubit()),
          BlocProvider(create: (_) => ThemeCubit()),
          BlocProvider(create: (_) => TokenCubit(sl<FlutterSecureStorage>())),
          BlocProvider(create: (_) => InternetCubit()..traceConnectivityChange()),
          BlocProvider(create: (_) => NotificationsCubit()),
          BlocProvider(create: (_) => sl<RegisterCubit>()..getCarModelAndColor()),
        ],
        child: BlocBuilder<LanguageCubit, Locale>(
          builder: (context, locale) {
            context.read<ThemeCubit>().updateTheme(locale: locale, isDarkMode: false);
            return ScreenUtilInit(
              builder: (_, __) {
                return BlocBuilder<ThemeCubit, ThemeData>(
                  builder: (context, theme) {
                    return MaterialApp.router(
                      locale: locale,
                      localizationsDelegates: L10n.localizationsDelegates,
                      supportedLocales: L10n.all,
                      debugShowCheckedModeBanner: false,
                      theme: theme.copyWith(
                        scaffoldBackgroundColor: Colors.white,
                        appBarTheme: const AppBarTheme(
                          surfaceTintColor: AppColor.white,
                          systemOverlayStyle: SystemUiOverlayStyle(
                            statusBarColor: AppColor.black,
                            statusBarIconBrightness: Brightness.light,
                            statusBarBrightness: Brightness.dark,
                            systemNavigationBarColor: AppColor.black,
                            systemNavigationBarDividerColor: Colors.black,
                            systemNavigationBarIconBrightness: Brightness.dark,
                          ),
                        ),
                      ),
                      routerConfig: goRouter,
                      builder: FlutterSmartDialog.init(),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
