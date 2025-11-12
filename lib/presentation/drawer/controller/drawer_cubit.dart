import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/usecase/drawer_usecase.dart';

part 'drawer_state.dart';
part 'drawer_cubit.freezed.dart';

class DrawerCubit extends Cubit<DrawerState> {
  final DrawerUsecase usecase;
  DrawerCubit({required this.usecase}) : super(DrawerState.initial());

  ValueNotifier<String> content = ValueNotifier('');

  Future<void> getPrivacy() async {
    SmartDialog.showLoading();
    final result = await usecase.getPrivacy();
    result.fold(
      (left) {
        SmartDialog.dismiss();
      },
      (right) {
        content.value = right.data!;
        SmartDialog.dismiss();
      },
    );
  }

  Future<void> getTerms() async {
    SmartDialog.showLoading();
    final result = await usecase.getTerms();
    result.fold(
      (left) {
        SmartDialog.dismiss();
      },
      (right) {
        print(right.data);
        content.value = '';
        content.value = right.data!;
        SmartDialog.dismiss();
      },
    );
  }
}
