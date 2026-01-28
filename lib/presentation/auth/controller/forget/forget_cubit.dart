import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../main.dart';
import '../../domain/model/requiest_models/new_password_model.dart';
import '../../domain/model/requiest_models/send_otp_model.dart';
import '../../domain/model/requiest_models/verify_otp_model.dart';
import '../../domain/usecases/forget_usecase.dart';

part 'forget_state.dart';
part 'forget_cubit.freezed.dart';

class ForgetCubit extends Cubit<ForgetState> {
  final ForgetUsecase forgetUsecase;

  final formKey = GlobalKey<FormState>();
  final formKeyOtp = GlobalKey<FormState>();
  final formKeyNewPassword = GlobalKey<FormState>();
  TextEditingController phone = TextEditingController();
  TextEditingController otp = TextEditingController();
  TextEditingController newPass = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  ValueNotifier<bool> obscureText = ValueNotifier(true);
  ValueNotifier<bool> obscureTextConfirm = ValueNotifier(true);

  ForgetCubit({required this.forgetUsecase}) : super(const ForgetState.initial());

  // Forget Password => Send OTP
  Future<void> resend({String? moble}) async {
    if (moble != null) {
      try {
        emit(const _LoadingForget());
        Map<String, dynamic> sendOTPModel = {'phone': moble ?? phone.text, 'user_type': 'driver'};
        final sendOtpResponse = await forgetUsecase.sendOtp(SendOTPModel.fromJson(sendOTPModel));
        sendOtpResponse.fold((left) => emit(_ErrorForget(left.message)), (right) => emit(const _LoadedForget()));
      } catch (e) {
        logger.e('Server Error Send OTP Section : $e');
      }
    }
  }

  // Forget Password => Verify OTP
  Future<void> verifyOtp(String moble) async {
    if (formKeyOtp.currentState!.validate()) {
      try {
        emit(const _LoadingVerifyForget());
        Map<String, dynamic> verifyOTPModel = {'phone': moble, 'user_type': 'driver', 'otp': otp.text};
        final verifyOtpResponse = await forgetUsecase.virefyOtp(VerifyOTPModel.fromJson(verifyOTPModel));
        verifyOtpResponse.fold((left) => emit(_ErrorVerifyForget(left.message)), (right) => emit(const _LoadedVerifyForget()));
      } catch (e) {
        logger.e('Server Error Verify OTP Section : $e');
      }
    }
  }

  // Forget Password => New Password
  Future<void> newPassword(String moble) async {
    if (formKeyNewPassword.currentState!.validate()) {
      try {
        emit(const _LoadingNewPassword());
        Map<String, dynamic> newPasswordModel = {'phone': moble, 'user_type': 'driver', 'password_confirmation': confirmPassword.text, 'password': newPass.text};
        final verifyOtpResponse = await forgetUsecase.newPassword(NewPasswordModel.fromJson(newPasswordModel));
        verifyOtpResponse.fold((left) => emit(_ErrorNewPassword(left.message)), (right) => emit(const _LoadedNewPassword()));
      } catch (e) {
        logger.e('Server Error New Password Section : $e');
      }
    }
  }

  // Change Obscure [ New Password ]
  void changeObscure() {
    obscureText.value = !obscureText.value;
  }

  // Change Obscure [ Confirm Password  ]
  void changeObscureConfirm() {
    obscureTextConfirm.value = !obscureTextConfirm.value;
  }

  @override
  Future<void> close() {
    phone.dispose();
    otp.dispose();
    newPass.dispose();
    confirmPassword.dispose();
    return super.close();
  }
}
