// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/context/global.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';

part 'introductions_event.dart';
part 'introductions_state.dart';
part 'introductions_bloc.freezed.dart';

class IntroductionsBloc extends Bloc<IntroductionsEvent, IntroductionsState> {
  final PageController pageController = PageController();
  double opacity = 1.0;

  List<Map<String, dynamic>> getIntroductionList(BuildContext context) {
    return [
      {'title': AppLocalizations.of(context)!.onboarding_title_1, 'description': AppLocalizations.of(context)!.onboarding_desc_1, 'image': Assets.imagesOnboardingOne},
      {'title': AppLocalizations.of(context)!.onboarding_title_2, 'description': AppLocalizations.of(context)!.onboarding_desc_2, 'image': Assets.imagesOnboardingThree},
      {'title': AppLocalizations.of(context)!.onboarding_title_3, 'description': AppLocalizations.of(context)!.onboarding_desc_3, 'image': Assets.imagesOnboardingTwo},
    ];
  }

  IntroductionsBloc() : super(const IntroductionsState.initial(index: 0)) {
    _setupPageListener();
    on<_NextPageEvent>(_nextPage);
    on<_SkipEvent>(_skipOnboarding);
  }

  void _setupPageListener() {
    pageController.addListener(() {
      final pageIndex = pageController.page?.round() ?? 0;
      final currentIndex = state.mapOrNull(initial: (s) => s.index);
      if (currentIndex != null && currentIndex != pageIndex) {
        emit(IntroductionsState.initial(index: pageIndex));
      }
    });
  }

  void _nextPage(_NextPageEvent event, Emitter<IntroductionsState> emit) async {
    if (state.maybeMap(initial: (value) => value.index < getIntroductionList(GlobalContext.context).length - 1, orElse: () => false)) {
      pageController.animateToPage(state.maybeMap(initial: (value) => value.index + 1, orElse: () => 0), duration: const Duration(milliseconds: 400), curve: Curves.ease);
    } else {
      add(_SkipEvent());
    }
  }

  void _skipOnboarding(_SkipEvent event, Emitter<IntroductionsState> emit) {
    sl<Box>(instanceName: BoxKey.appBox).put(BoxKey.isFirstTime, false);
    emit(const IntroductionsState.complete());
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
