import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_ce/hive_ce.dart';

import 'hive/box_key.dart';
import 'notifications/awesome_notification.service.dart';
import 'notifications/fcm.service.dart';

class AppServices {
  Box appBox = Hive.box(BoxKey.appBox);

  Future<void> initAppServices() async {
    await dotenv.load(fileName: ".env");
    Future.wait([ScreenUtil.ensureScreenSize()]);

    await FcmHelper.initFcm();
    await NotificationsController.initializeLocalNotifications();
    await NotificationsController.initializeIsolateReceivePort();
  }
}
