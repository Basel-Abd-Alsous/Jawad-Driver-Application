import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../../../../main.dart';
import '../../domain/model/document_status_model.dart';
import '../../domain/model/register_status_model.dart';
import '../../domain/model/requiest_models/login_requiest_model.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/register_usecase.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

enum RegisterStates { register, documents, carInfo, bankInfo, completed, unknown }

extension RegisterStepExtension on RegisterStates {
  static RegisterStates fromString(String? step) {
    switch (step?.replaceAll('-', '')) {
      case 'register':
        return RegisterStates.register;
      case 'documents':
        return RegisterStates.documents;
      case 'carinfo':
        return RegisterStates.carInfo;
      case 'bankinfo':
        return RegisterStates.bankInfo;
      case 'completed':
        return RegisterStates.completed;
      default:
        return RegisterStates.unknown;
    }
  }
}

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  final RegisterUsecase registerUsecase;

  final formKey = GlobalKey<FormState>();
  final TextEditingController mobile = TextEditingController();
  final TextEditingController password = TextEditingController();
  ValueNotifier<bool> obscureText = ValueNotifier(true);

  LoginCubit({required this.registerUsecase, required this.loginUseCase}) : super(LoginState.initial());

  // Login Function
  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      try {
        emit(_LoadingLogin());
        final oneSignalId = OneSignal.User.pushSubscription.id;
        final loginData = {'phone': formatPhone(mobile.text), 'password': password.text, 'user_type': 'driver', 'fcm_token': oneSignalId};
        final loginResponse = await loginUseCase.login(LoginRequiestModel.fromJson(loginData));
        loginResponse.fold((left) => emit(_ErrorLogin(left.message)), (right) => emit(_LoadedLogin(right.data!)));
      } catch (e) {
        logger.e('Server Error Login Section : $e');
      }
    }
  }

  // formatPhone(mobile.text)
  String formatPhone(String phone) {
    // remove all spaces just in case
    phone = phone.replaceAll(' ', '');

    if (phone.startsWith('0')) {
      phone = phone.substring(1); // remove first 0
    }

    return '+966$phone';
  }

  // Document Status Function
  Future<void> documentStatus() async {
    try {
      emit(_LoadingDocumentStatus());
      final documentStatusResponse = await registerUsecase.documentStatus();
      documentStatusResponse.fold((left) => emit(_ErrorDocumentStatus(left.message)), (right) => emit(_LoadedDocumentStatus(right.data!)));
    } catch (e) {
      logger.e('Server Error Document Status Section : $e');
    }
  }

  // Register Status Function
  Future<void> registerStatus() async {
    try {
      emit(_LoadingRegisterStatus());
      final registerStatusResponse = await registerUsecase.registerStatus();
      registerStatusResponse.fold((left) => emit(_ErrorRegisterStatus(left.message)), (right) => emit(_LoadedRegisterStatus(right.data!)));
    } catch (e) {
      logger.e('Server Error Register Status Section : $e');
    }
  }

  // Change Obscure
  void changeObscure() {
    obscureText.value = !obscureText.value;
  }

  @override
  Future<void> close() {
    mobile.dispose();
    password.dispose();
    return super.close();
  }
}
