import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/router/router_key.dart';
import '../../../../../core/extension/space_extension.dart';
import '../../../../../core/mixin/validate.mixin.dart';
import '../../../../../core/services/hive/box_key.dart';
import '../../../../../core/utils/border_radius.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widget/button/app_button.dart';
import '../../../../../core/widget/widget_dailog.dart';
import '../../../../../injection_container.dart';
import '../../../controller/forget/forget_cubit.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../controller/login/login_cubit.dart';
import '../../../controller/register/register_cubit.dart';
import '../../../domain/model/requiest_models/register_requiest_model.dart';

class VerifyContainer extends StatelessWidget with FormValidationMixin {
  final String phoneNumber;
  final bool? isLogin;
  final bool? isRegister;
  final RegisterModel? model;

  VerifyContainer({super.key, required this.phoneNumber, this.isLogin = false, this.isRegister = false, this.model});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocConsumer<ForgetCubit, ForgetState>(
      listener: _listenerForget,
      builder: (context, stateForget) {
        bool reSendCode = stateForget.maybeWhen(orElse: () => false, loadingForget: () => true);
        return BlocConsumer<LoginCubit, LoginState>(
          listener: _listenerLogin,
          builder: (context, stateLogin) {
            return BlocConsumer<RegisterCubit, RegisterState>(
              listener: _listenerRegister,
              builder: (context, stateRegister) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(color: AppColor.onSecondColor.withValues(alpha: 0.23), borderRadius: BorderRadius.circular(AppBorderRadius.lg16)),
                  child: Form(
                    key: context.read<ForgetCubit>().formKeyOtp,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('${local.we_send_to}$phoneNumber', style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                        20.gap,
                        Center(
                          child: Pinput(
                            autofocus: true,
                            showCursor: true,
                            length: 4,
                            controller: context.read<ForgetCubit>().otp,
                            hapticFeedbackType: HapticFeedbackType.mediumImpact,
                            validator: (value) => validateNull(context, value),
                          ),
                        ),
                        20.gap,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(local.you_dont_receive_otp, style: AppTextStyle.style14.copyWith(color: AppColor.white, height: 1.2)),
                            10.gap,
                            ValueListenableBuilder(
                              valueListenable: context.read<ForgetCubit>().secondsLeft,
                              builder: (context, secondsLeft, child) => InkWell(
                                onTap: (secondsLeft == 0 && !reSendCode)
                                    ? () {
                                        context.read<ForgetCubit>().resend(moble: phoneNumber.replaceAll(' ', '+'));
                                        context.read<ForgetCubit>().startTimer();
                                      }
                                    : null,
                                child: reSendCode
                                    ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                                    : Text(
                                        secondsLeft == 0 ? local.resend_otp : '${local.resend_otp} ($secondsLeft s)',
                                        style: AppTextStyle.style14B.copyWith(color: secondsLeft == 0 ? AppColor.primaryColor : AppColor.grey),
                                      ),
                              ),
                            ),
                          ],
                        ),
                        30.gap,
                        Row(
                          children: [
                            Expanded(
                              child: AppButton.text(
                                loading: isLogin == true
                                    ? stateLogin.maybeWhen(loadingVerifyLogin: () => true, orElse: () => false)
                                    : isRegister == true
                                    ? stateRegister.maybeWhen(orElse: () => false, loadingVerifyOtpSignUp: () => true)
                                    : stateForget.maybeWhen(orElse: () => false, loadingVerifyForget: () => true),
                                text: local.verify,
                                onPressed: () async {
                                  if (isLogin == true) {
                                    context.read<LoginCubit>().verifyOtpLogin(phoneNumber.replaceAll(' ', '+'), context.read<ForgetCubit>().otp.text);
                                    return;
                                  } else if (isRegister == true) {
                                    context.read<RegisterCubit>().register(phoneNumber.replaceAll(' ', '+'), context.read<ForgetCubit>().otp.text, model!);
                                    return;
                                  } else {
                                    await context.read<ForgetCubit>().verifyOtp(phoneNumber.replaceAll(' ', '+'));
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  void _listenerForget(BuildContext context, ForgetState state) {
    final local = AppLocalizations.of(context)!;

    state.maybeWhen(
      loadedVerifyForget: () => SmartDialog.show(
        builder: (_) => WidgetDilog(
          title: local.verification_completed,
          message: local.account_verified,
          cancelText: local.continues,
          onCancel: () {
            SmartDialog.dismiss();
            context.push('${AppRoutes.changePassword}?phoneNumber=${phoneNumber.replaceAll(' ', '+')}');
          },
        ),
      ),
      errorVerifyForget: (message) => SmartDialog.show(
        builder: (_) => WidgetDilog(isError: true, title: local.warning, message: message, cancelText: local.back, onCancel: () => SmartDialog.dismiss()),
      ),
      orElse: () => null,
    );
  }

  void _listenerLogin(BuildContext context, LoginState state) {
    final local = AppLocalizations.of(context)!;

    state.maybeWhen(
      loadedVerifyLogin: (data) async {
        await sl<Box>(instanceName: BoxKey.appBox).put(BoxKey.token, data['token']);
        sl<Box>(instanceName: BoxKey.appBox).put(BoxKey.userStatusRegister, data['registrationStatus']);
        final step = RegisterStepExtension.fromString(data['registrationStatus']);
        switch (step) {
          case RegisterStates.register:
            context.replaceNamed(AppRoutes.register);
            break;
          case RegisterStates.documents:
            context.replaceNamed(AppRoutes.uploadDocument);
            break;
          case RegisterStates.carInfo:
            context.replaceNamed(AppRoutes.carInfo);
            break;
          case RegisterStates.bankInfo:
            context.replaceNamed(AppRoutes.bankInfo);
            break;
          case RegisterStates.completed:
            context.go(AppRoutes.layout);
            break;
          case RegisterStates.unknown:
            context.go(AppRoutes.login);
            break;
        }
      },
      errorVerifyLogin: (message) => SmartDialog.show(
        builder: (_) => WidgetDilog(isError: true, title: local.warning, message: message, cancelText: local.back, onCancel: () => SmartDialog.dismiss()),
      ),
      orElse: () => null,
    );
  }

  void _listenerRegister(BuildContext context, RegisterState state) {
    final local = AppLocalizations.of(context)!;

    state.maybeWhen(
      loadedVerifyOtpSignUp: (token) async {
        await sl<Box>(instanceName: BoxKey.appBox).put(BoxKey.token, token);
        return SmartDialog.show(
          builder: (_) => WidgetDilog(
            title: local.registration_completed,
            message: local.proceed_next_step,
            cancelText: local.continues,
            onCancel: () {
              SmartDialog.dismiss();
              context.replaceNamed(AppRoutes.uploadDocument);
            },
          ),
        );
      },
      errorVerifyOtpSignUp: (message) => SmartDialog.show(
        builder: (_) => WidgetDilog(isError: true, title: local.warning, message: message, cancelText: local.back, onCancel: () => SmartDialog.dismiss()),
      ),
      orElse: () => null,
    );
  }
}
