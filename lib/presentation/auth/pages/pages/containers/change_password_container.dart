import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
 
import '../../../../../core/router/router_key.dart';
import '../../../../../core/extension/space_extension.dart';
import '../../../../../core/mixin/validate.mixin.dart';
import '../../../../../core/utils/border_radius.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widget/button/app_button.dart';
import '../../../../../core/widget/widget_dailog.dart';
import '../../../controller/forget/forget_cubit.dart';
import '../../widgets/widget_auth_text_field.dart';
import '../../../../../l10n/app_localizations.dart';

class ChangePasswordContainer extends StatelessWidget with FormValidationMixin {
  final String phoneNumber;
  ChangePasswordContainer({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocConsumer<ForgetCubit, ForgetState>(
      listener: _listener,
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColor.onSecondColor.withValues(alpha: 0.23),
            borderRadius: BorderRadius.circular(AppBorderRadius.lg16),
          ),
          child: Form(
            key: context.read<ForgetCubit>().formKeyNewPassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(local.new_password, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                ValueListenableBuilder(
                  valueListenable: context.read<ForgetCubit>().obscureText,
                  builder: (context, value, child) => WidgetAuthTextField(
                    hintText: local.enter_new_password,
                    controller: context.read<ForgetCubit>().newPass,
                    obscureText: value,
                    keyboardType: TextInputType.text,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () => context.read<ForgetCubit>().changeObscure(),
                      icon: Icon(value == true ? Icons.visibility_off : Icons.visibility),
                    ),
                    validator: (value) => validatePassword(context,value),
                  ),
                ),
                10.gap,
                Text(local.confirm_password, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                ValueListenableBuilder(
                  valueListenable: context.read<ForgetCubit>().obscureTextConfirm,
                  builder: (context, value, child) => WidgetAuthTextField(
                    hintText: local.enter_confirm_password,
                    controller: context.read<ForgetCubit>().confirmPassword,
                    obscureText: value,
                    keyboardType: TextInputType.text,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () => context.read<ForgetCubit>().changeObscureConfirm(),
                      icon: Icon(value == true ? Icons.visibility_off : Icons.visibility),
                    ),
                    validator: (value) => validatePassword(context,value),
                  ),
                ),
                20.gap,
                Row(
                  children: [
                    Expanded(
                      child: AppButton.text(
                        loading: state.maybeWhen(orElse: () => false, loadingNewPassword: () => true),
                        text: local.update,
                        onPressed: () async => await context.read<ForgetCubit>().newPassword(phoneNumber.replaceAll(' ', '+')),
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
  }

  void _listener(BuildContext context, ForgetState state) {
    final local = AppLocalizations.of(context)!;

    state.maybeWhen(
      loadedNewPassword: () => SmartDialog.show(
        builder: (_) => WidgetDilog(
          title: local.password_changed,
          message: local.password_updated_success,
          cancelText: local.continues,
          onCancel: () {
            SmartDialog.dismiss();
            context.go(AppRoutes.login);
          },
        ),
      ),
      errorNewPassword: (message) => SmartDialog.show(
        builder: (_) => WidgetDilog(
          isError: true,
          title: local.warning,
          message: message,
          cancelText: local.back,
          onCancel: () => SmartDialog.dismiss(),
        ),
      ),
      orElse: () => null,
    );
  }
}
