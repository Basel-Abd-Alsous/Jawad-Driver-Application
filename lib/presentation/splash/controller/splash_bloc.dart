import 'package:bloc/bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/services/hive/box_key.dart';
import '../../../../core/router/router_key.dart';
import '../../../../injection_container.dart';
import '../../../../main.dart';
import '../../../core/services/analytics_service.dart';
import '../../../core/widget/widget_dailog.dart';
import '../../../l10n/app_localizations.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const _Initial()) {
    on<_Started>(_initializeVideo);
  }

  /// 🛰️ طلب صلاحية الموقع دائمًا
  Future<void> _havePermissionMap() async {
    await Future.delayed(const Duration(milliseconds: 500)); // لتجنب مشاكل iOS
    bool granted = await _requestLocationPermission();
    if (!granted) {
      logger.i('❌ صلاحية الموقع مرفوضة، يمكن توجيه المستخدم للإعدادات');
    } else {
      logger.i('✔️ صلاحية الموقع Always مفعّلة');
    }
  }

  /// 🛰️ التحقق وطلب الصلاحيات
  Future<bool> _requestLocationPermission() async {
    try {
      // 1️⃣ اطلب WhenInUse أولاً
      var whenInUseStatus = await Permission.locationWhenInUse.status;
      if (!whenInUseStatus.isGranted) {
        whenInUseStatus = await Permission.locationWhenInUse.request();
        if (!whenInUseStatus.isGranted) {
          logger.i('❌ صلاحية Location WhenInUse مرفوضة');
          return false;
        }
      }

      // 2️⃣ Request Always Location Permission
      var alwaysStatus = await Permission.locationAlways.status;
      if (!alwaysStatus.isGranted) {
        SmartDialog.show(
          clickMaskDismiss: false,
          backType: SmartBackType.block,
          builder: (context) => WidgetDilog(
            title: AppLocalizations.of(context)!.always_location_permission_title,
            isError: true,
            message: AppLocalizations.of(context)!.always_location_permission_message,
            cancelText: AppLocalizations.of(context)!.open_settings,
            onCancel: () async {
              alwaysStatus = await Permission.locationAlways.request();
              if (alwaysStatus.isGranted) {
                SmartDialog.dismiss();
                logger.i('✔️ صلاحية الموقع Always مفعّلة بعد الطلب من الإعدادات');
              } else {
                logger.i('❌ صلاحية الموقع Always لا تزال مرفوضة بعد الطلب من الإعدادات');
              }
            },
          ),
        );
      }

      return await Permission.locationAlways.isGranted;
    } catch (e) {
      logger.e('خطأ أثناء طلب صلاحية الموقع: $e');
      return false;
    }
  }

  /// 🎬 تهيئة الفيديو في Splash
  void _initializeVideo(_Started event, Emitter<SplashState> emit) async {
    VideoPlayerController? controller;
    try {
      emit(const _Loading());

      controller = VideoPlayerController.asset(Assets.videoLogo);
      await controller.initialize();
      controller.play();
      emit(_Player(controller));

      // طلب صلاحية الموقع
      await _havePermissionMap();

      // الانتقال للصفحة التالية بعد 3 ثواني
      await Future.delayed(const Duration(seconds: 3));
      emit(_Finish(await route));
    } catch (e, st) {
      logger.e('خطأ أثناء Splash: $e \n$st');
      emit(_Finish(await route));
    }
  }

  /// 🔀 تحديد الصفحة التالية بناءً على حالة المستخدم
  Future<String> get route async {
    try {
      final bool isFirstTime = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.isFirstTime, defaultValue: true);
      final String? token = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token, defaultValue: null);
      String route;

      if (token != null) {
        route = AppRoutes.layout;
        await AnalyticsService.instance.trackAppOpen();
      } else if (isFirstTime) {
        route = AppRoutes.language;
        await AnalyticsService.instance.trackInstall();
      } else {
        route = AppRoutes.login;
        await AnalyticsService.instance.trackAppOpen();
      }
      return route;
    } catch (e) {
      logger.e(e.toString());
      return AppRoutes.language;
    }
  }

  @override
  Future<void> close() {
    if (state is _Player) {
      (state as _Player).controller.dispose();
    }
    return super.close();
  }
}
