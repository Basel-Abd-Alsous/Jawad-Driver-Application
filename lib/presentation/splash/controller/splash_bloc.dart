import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/services/hive/box_key.dart';
import '../../../../core/router/router_key.dart';
import '../../../../injection_container.dart';
import '../../../../main.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(_Initial()) {
    on<_Started>((_initializeVideo));
  }

  Future<void> _havePermissionMap() async {
    bool? havePermission = await _requestLocationPermission();
    if (havePermission == true) {
    } else {
      await _requestLocationPermission();
    }
  }

  Future<bool> _requestLocationPermission() async {
    var status = await Permission.locationWhenInUse.status;

    if (status.isGranted) {
      return true;
    } else if (status.isDenied) {
      // Request permission
      var result = await Permission.locationWhenInUse.request();
      return result.isGranted;
    } else if (status.isPermanentlyDenied) {
      return false;
    }

    return false;
  }

  void _initializeVideo(_Started event, Emitter<SplashState> emit) async {
    try {
      emit(_Loading());
      final controller = VideoPlayerController.asset(Assets.videoLogo);
      await controller.initialize();
      controller.play();
      emit(_Player(controller));
      await _havePermissionMap();
      await Future.delayed(const Duration(seconds: 3), () async {
        emit(_Finish(await route));
      });
    } catch (e) {
      emit(_Finish(await route));
    }
  }

  Future<String> get route async {
    try {
      final bool isFirstTime = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.isFirstTime, defaultValue: true);
      final String? userStatusRegister = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.userStatusRegister, defaultValue: '');
      final String route =
          userStatusRegister == 'completed'
              ? AppRoutes.layout
              : isFirstTime
              ? AppRoutes.language
              : AppRoutes.login;
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
