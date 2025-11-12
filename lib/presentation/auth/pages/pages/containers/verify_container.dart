import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
 
import '../../../../../core/router/router_key.dart';
import '../../../../../core/extension/space_extension.dart';
import '../../../../../core/mixin/validate.mixin.dart';
import '../../../../../core/utils/border_radius.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widget/button/app_button.dart';
import '../../../../../core/widget/widget_dailog.dart';
import '../../../controller/forget/forget_cubit.dart';
import '../../../../../l10n/app_localizations.dart';

class VerifyContainer extends StatelessWidget with FormValidationMixin {
  final String phoneNumber;
  VerifyContainer({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocConsumer<ForgetCubit, ForgetState>(
      listener: _listener,
      builder: (context, state) {
        bool reSendCode = state.maybeWhen(orElse: () => false, loadingForget: () => true);
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
                    InkWell(
                      onTap: () => context.read<ForgetCubit>().sendOtp(moble: phoneNumber),
                      child:
                          reSendCode
                              ? const CircularProgressIndicator()
                              : Text(local.resend_otp, style: AppTextStyle.style14B.copyWith(color: AppColor.primaryColor, height: 1.2)),
                    ),
                  ],
                ),
                30.gap,
                Row(
                  children: [
                    Expanded(
                      child: AppButton.text(
                        loading: state.maybeWhen(orElse: () => false, loadingVerifyForget: () => true),
                        text: local.verify,
                        onPressed: () async => await context.read<ForgetCubit>().verifyOtp(phoneNumber.replaceAll(' ', '+')),
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
      loadedVerifyForget:
          () => SmartDialog.show(
            builder:
                (_) => WidgetDilog(
                  title: local.verification_completed,
                  message: local.account_verified,
                  cancelText: local.continues,
                  onCancel: () {
                    SmartDialog.dismiss();
                    context.push('${AppRoutes.changePassword}?phoneNumber=${phoneNumber.replaceAll(' ', '+')}');
                  },
                ),
          ),
      errorVerifyForget:
          (message) => SmartDialog.show(
            builder: (_) => WidgetDilog(isError: true, title: local.warning, message: message, cancelText: local.back, onCancel: () => SmartDialog.dismiss()),
          ),
      orElse: () => null,
    );
  }
}
