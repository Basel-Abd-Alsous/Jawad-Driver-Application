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

class ForgetContainer extends StatelessWidget with FormValidationMixin {
  ForgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocConsumer<ForgetCubit, ForgetState>(
      listener: _listener,
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColor.onSecondColor.withValues(alpha: 0.23),
            borderRadius: BorderRadius.circular(AppBorderRadius.lg16),
          ),
          child: Form(
            key: context.read<ForgetCubit>().formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(local.mobile, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                WidgetAuthTextField(
                  hintText: local.mobile_hint,
                  controller: context.read<ForgetCubit>().phone,
                  keyboardType: TextInputType.phone,
                  prefixIcon: const Icon(Icons.phone),
                  // validator: (value) => validateMobile(value),
                ),
                20.gap,
                Row(
                  children: [
                    Expanded(
                      child: AppButton.text(
                        loading: state.maybeWhen(orElse: () => false, loadingForget: () => true),
                        text: local.send,
                        onPressed: () async => await context.read<ForgetCubit>().sendOtp(),
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
      loadedForget: () => SmartDialog.show(
        builder: (_) => WidgetDilog(
          title: local.successfully,
          message: local.check_phone,
          cancelText: local.verify,
          onCancel: () {
            SmartDialog.dismiss();
            context.push('${AppRoutes.verify}?phoneNumber=${context.read<ForgetCubit>().phone.text}');
          },
        ),
      ),
      errorForget: (message) => SmartDialog.show(
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
