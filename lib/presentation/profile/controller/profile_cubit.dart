import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/context/global.dart';
import '../../../core/function/pick_image.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../core/widget/widget_dailog.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../layout/domain/model/user_model.dart';
import '../domain/model/profile_param.dart';
import '../domain/usecase/profile_usecase.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileUsecase profileUsecase;
  ProfileCubit({required this.profileUsecase}) : super(const ProfileState.initial()) {
    handelUserData();
  }
  final keyForm = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  ValueNotifier<File> imageBuyer = ValueNotifier(File(''));

  void selectImageBuyer() {
    imagePicker(ImageSource.gallery).then((value) async {
      if (value != null) {
        imageBuyer.value = value;
      }
    });
  }

  void handelUserData() {
    Driver? profile = sl<Box<Driver>>().get(BoxKey.user);
    name.text = profile?.firstName ?? '';
    email.text = profile?.email ?? '';
    emit(const _Initial());
  }

  Future<void> updateProfile() async {
    if (!keyForm.currentState!.validate()) return;

    SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
    try {
      final result = await profileUsecase.updateProfileData(
        profileParams: ProfileParam.fromJson({'first_name': name.text, 'last_name': name.text, 'email': email.text, 'profile_image': imageBuyer.value}),
      );
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          SmartDialog.show(
            builder: (context) => WidgetDilog(
              title: AppLocalizations.of(context)!.successfully,
              message: AppLocalizations.of(context)!.update_profile_error,
              cancelText: AppLocalizations.of(context)!.back,
              onCancel: () {
                GlobalContext.context.pop();
                SmartDialog.dismiss();
              },
            ),
          );
          log('Server Error In Profile Section : ${failure.message}');
        },
        (success) async {
          SmartDialog.dismiss();
          var box = sl<Box<Driver>>();
          Driver? profile = box.get(BoxKey.user);
          if (profile != null) {
            final updatedProfile = profile.copyWith(firstName: name.text, lastName: name.text, email: email.text, profileImage: success.profileImage);
            await box.put(BoxKey.user, updatedProfile);
          }
          SmartDialog.show(
            builder: (context) => WidgetDilog(
              title: AppLocalizations.of(context)!.successfully,
              message: AppLocalizations.of(context)!.update_profile_success,
              cancelText: AppLocalizations.of(context)!.back,
              onCancel: () {
                GlobalContext.context.pop();
                SmartDialog.dismiss();
              },
            ),
          );
        },
      );
    } catch (e) {
      SmartDialog.dismiss();
      log('Server Error In Profile Section : $e');
    }
  }
}
