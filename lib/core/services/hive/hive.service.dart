import '../../../injection_container.dart';
import '../../../presentation/layout/domain/model/user_model.dart';

import 'package:hive_ce_flutter/hive_ce_flutter.dart';

import 'box_key.dart';

class HiveServices {
  Future<void> init() async {
    await Hive.initFlutter();
    _registerAdapters();
    await Future.wait([_initAppBox(), _initializeBoxModel<Driver>(boxName: BoxKey.user)]);
  }

  void _registerAdapters() {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter<Driver>(DriverAdapter());
    }
  }

  Future<void> _initAppBox() async {
    final appBox = await Hive.openBox(BoxKey.appBox);
    sl.registerSingleton<Box>(appBox, instanceName: BoxKey.appBox);
  }

  Future<void> _initializeBoxModel<T>({required String boxName}) async {
    final Box<T> box = await Hive.openBox<T>(boxName);
    if (!sl.isRegistered<Box<T>>()) {
      sl.registerSingleton<Box<T>>(box);
    }
  }
}
