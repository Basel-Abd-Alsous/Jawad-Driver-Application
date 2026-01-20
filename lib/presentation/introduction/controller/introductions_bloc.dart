// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_ce/hive_ce.dart';

import '../../../core/context/global.dart';
import '../../../core/router/router_key.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../injection_container.dart';
import '../domain/model/boarding_model.dart';
import '../domain/usecase/boarding_usecase.dart';

part 'introductions_event.dart';
part 'introductions_state.dart';
part 'introductions_bloc.freezed.dart';

class IntroductionsBloc extends Bloc<IntroductionsEvent, IntroductionsState> {
  final BoardingUsecase usecase;

  IntroductionsBloc({required this.usecase}) : super(const IntroductionsState.initial(index: 0)) {
    _setupPageListener();
    on<_NextPageEvent>(_nextPage);
    on<_SkipEvent>(_skipOnboarding);
  }

  final PageController pageController = PageController();
  double opacity = 1.0;

  ValueNotifier<List<Boarding>> introductionList = ValueNotifier([]);

  Future<void> getBoarding() async {
    SmartDialog.showLoading();
    final result = await usecase.getBoardings();
    result.fold((left) => SmartDialog.dismiss(), (right) {
      print(right.data);
      introductionList.value = right.data!.boarding;
      introductionList.value.isEmpty ? GlobalContext.context.go(AppRoutes.login) : null;
      SmartDialog.dismiss();
    });
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
    if (state.maybeMap(initial: (value) => value.index < introductionList.value.length - 1, orElse: () => false)) {
      pageController.animateToPage(
        state.maybeMap(initial: (value) => value.index + 1, orElse: () => 0),
        duration: const Duration(milliseconds: 400),
        curve: Curves.ease,
      );
    } else {
      add(const _SkipEvent());
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
