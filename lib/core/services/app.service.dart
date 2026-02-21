import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_ce/hive_ce.dart';

import '../../firebase_options.dart';
import '../../injection_container.dart';
import 'hive/box_key.dart';
import 'notifications/awesome_notification.service.dart';
import 'notifications/fcm.service.dart';

class AppServices {
  Box appBox = Hive.box(BoxKey.appBox);

  Future<void> initAppServices() async {
    await dotenv.load(fileName: ".env");
    Future.wait([ScreenUtil.ensureScreenSize()]);

    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    sl.registerSingleton<FirebaseMessaging>(FirebaseMessaging.instance);
    await NotificationsController.initializeLocalNotifications();
    await NotificationsController.initializeIsolateReceivePort();
    await NotificationsController.initializeNotificationsEventListeners();
    await FcmHelper.initFcm();
  }
}
