import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

import '../../../injection_container.dart';
import '../../services/hive/box_key.dart';

class LanguageCubit extends Cubit<Locale> {
  factory LanguageCubit() {
    return _instance;
  }

  LanguageCubit._internal() : super(_getInitialLocale());

  static final LanguageCubit _instance = LanguageCubit._internal();

  static Locale _getInitialLocale() {
    final box = sl<Box>(instanceName: BoxKey.appBox);
    final savedLang = box.get(BoxKey.language, defaultValue: 'ar') as String;
    return Locale(savedLang);
  }

  void changeLanguage(String lang) {
    final box = sl<Box>(instanceName: BoxKey.appBox);
    box.put(BoxKey.language, lang);
    emit(Locale(lang));
  }
}
