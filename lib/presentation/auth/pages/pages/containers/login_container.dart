import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

import '../../../../../core/services/hive/box_key.dart';
import '../../../../../core/router/router_key.dart';
import '../../../../../core/extension/space_extension.dart';
import '../../../../../core/mixin/validate.mixin.dart';
import '../../../../../core/utils/border_radius.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../injection_container.dart';
import '../../../../../core/widget/widget_dailog.dart';
import '../../../controller/login/login_cubit.dart';
import '../../widgets/widget_forget_password.dart';
import '../../widgets/widget_login_button.dart';
import '../../widgets/widget_auth_text_field.dart';
import '../../../../../l10n/app_localizations.dart';

class LoginContainer extends StatelessWidget with FormValidationMixin {
  LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocConsumer<LoginCubit, LoginState>(
      listener: _listener,
      builder: (context, state) {
        bool registerStatus = state.maybeWhen(orElse: () => false, loadingRegisterStatus: () => true);

        return Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: AppColor.onSecondColor.withValues(alpha: 0.23), borderRadius: BorderRadius.circular(AppBorderRadius.lg16)),
          child: Form(
            key: context.read<LoginCubit>().formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(local.mobile, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                WidgetAuthTextField(
                  hintText: local.mobile_hint,
                  controller: context.read<LoginCubit>().mobile,
                  keyboardType: TextInputType.phone,
                  prefixIcon: const Icon(Icons.phone),
                  validator: (value) => validateMobile(context, value),
                ),
                10.gap,
                Text(local.password, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                ValueListenableBuilder(
                  valueListenable: context.read<LoginCubit>().obscureText,
                  builder:
                      (context, value, child) => WidgetAuthTextField(
                        hintText: local.password_hint,
                        controller: context.read<LoginCubit>().password,
                        obscureText: value,
                        keyboardType: TextInputType.text,
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () => context.read<LoginCubit>().changeObscure(),
                          icon: Icon(value == true ? Icons.visibility_off : Icons.visibility),
                        ),
                        validator: (value) => validatePassword(context, value),
                      ),
                ),
                5.gap,
                const WidgetForgetPassword(),
                20.gap,
                const WidgetAuthButton(),
                20.gap,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(local.dont_have_account, style: AppTextStyle.style12.copyWith(color: AppColor.onSecondColor)),
                    const SizedBox(width: 5),
                    registerStatus
                        ? SizedBox(width: 20, height: 20, child: CircularProgressIndicator(color: AppColor.white))
                        : InkWell(
                          onTap: () async {
                            final String? token = await sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token);
                            if (token != null) {
                              context.read<LoginCubit>().registerStatus();
                            } else {
                              context.push(AppRoutes.register);
                            }
                          },
                          child: Text(local.create_new_account, style: AppTextStyle.style12B.copyWith(color: Colors.white)),
                        ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _listener(BuildContext context, LoginState state) async {
    final local = AppLocalizations.of(context)!;

    state.maybeWhen(
      loadedLogin: (data) async {
        await sl<Box>(instanceName: BoxKey.appBox).put(BoxKey.token, data['token']);
        sl<Box>(instanceName: BoxKey.appBox).put(BoxKey.userStatusRegister, data['registrationStatus']);
        final step = RegisterStepExtension.fromString(data['registrationStatus']);
        switch (step) {
          case RegisterStates.register:
            context.push(AppRoutes.register);
            break;
          case RegisterStates.documents:
            context.push(AppRoutes.uploadDocument);
            break;
          case RegisterStates.carInfo:
            context.push(AppRoutes.carInfo);
            break;
          case RegisterStates.bankInfo:
            context.push(AppRoutes.bankInfo);
            break;
          case RegisterStates.completed:
            context.go(AppRoutes.layout);
            break;
          case RegisterStates.unknown:
            context.go(AppRoutes.login);
            break;
        }
      },
      errorLogin:
          (message) => SmartDialog.show(
            builder: (_) => WidgetDilog(isError: true, title: local.warning, message: message, cancelText: local.back, onCancel: () => SmartDialog.dismiss()),
          ),
      loadedRegisterStatus: (value) {
        final step = RegisterStepExtension.fromString(value.payload?.currentStep);
        switch (step) {
          case RegisterStates.register:
            context.push(AppRoutes.register);
            break;
          case RegisterStates.documents:
            context.push(AppRoutes.uploadDocument);
            break;
          case RegisterStates.carInfo:
            context.push(AppRoutes.carInfo);
            break;
          case RegisterStates.bankInfo:
            context.push(AppRoutes.bankInfo);
            break;
          case RegisterStates.completed:
            context.go(AppRoutes.layout);
            break;
          case RegisterStates.unknown:
            context.go(AppRoutes.login);
            break;
        }
      },
      orElse: () => null,
    );
  }
}
