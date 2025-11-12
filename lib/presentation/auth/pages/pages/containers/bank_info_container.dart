import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hive_flutter/hive_flutter.dart' show Box;

import '../../../../../core/services/hive/box_key.dart';
import '../../../../../core/router/router_key.dart';
import '../../../../../core/extension/space_extension.dart';
import '../../../../../core/mixin/validate.mixin.dart';
import '../../../../../core/utils/border_radius.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widget/button/app_button.dart';
import '../../../../../injection_container.dart';
import '../../../../../core/widget/widget_dailog.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../controller/register/register_cubit.dart';
import '../../widgets/widget_auth_text_field.dart';

class BankInfoContainer extends StatelessWidget with FormValidationMixin {
  BankInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: _listener,
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: AppColor.onSecondColor.withValues(alpha: 0.23), borderRadius: BorderRadius.circular(AppBorderRadius.lg16)),
          child: Form(
            key: context.read<RegisterCubit>().formKeyStep4,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(local.bank_name, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                WidgetAuthTextField(
                  hintText: local.enter_bank_name,
                  controller: context.read<RegisterCubit>().bankName,
                  keyboardType: TextInputType.text,
                  validator: (value) => context.read<RegisterCubit>().stcpay.text.isNotEmpty ? null : validateNull(context, value),
                ),
                // 5.gap,
                // Text(local.number, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                // WidgetAuthTextField(
                //   hintText: local.enter_number,
                //   controller: context.read<RegisterCubit>().number,
                //   keyboardType: TextInputType.number,
                //   validator: (value) => validateNull(context, value),
                // ),
                5.gap,
                Text(local.iban, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                WidgetAuthTextField(
                  hintText: local.enter_iban,
                  controller: context.read<RegisterCubit>().iban,
                  maxLength: 24,
                  keyboardType: TextInputType.text,
                  validator: (value) => context.read<RegisterCubit>().stcpay.text.isNotEmpty ? null : validateIBAN(context, value),
                ),
                // 5.gap,
                // Text(local.swift_code, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                // WidgetAuthTextField(
                //   hintText: local.enter_swift_code,
                //   controller: context.read<RegisterCubit>().swift,
                //   keyboardType: TextInputType.text,
                //   validator: (value) => validateNull(context, value),
                // ),
                // 5.gap,
                // Text(local.code, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                // WidgetAuthTextField(
                //   hintText: local.enter_code,
                //   controller: context.read<RegisterCubit>().code,
                //   keyboardType: TextInputType.text,
                //   validator: (value) => validateNull(context, value),
                // ),
                20.gap,
                Row(
                  spacing: 5,
                  children: [
                    Expanded(child: Container(height: 2, color: AppColor.white)),
                    Text('OR', style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                    Expanded(child: Container(height: 2, color: AppColor.white)),
                  ],
                ),
                20.gap,
                Text('STCpay', style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                5.gap,
                WidgetAuthTextField(
                  hintText: local.mobile_hint,
                  controller: context.read<RegisterCubit>().stcpay,
                  keyboardType: TextInputType.phone,
                  prefixIcon: const Icon(Icons.phone),
                  validator:
                      (value) =>
                          context.read<RegisterCubit>().iban.text.isNotEmpty || context.read<RegisterCubit>().bankName.text.isNotEmpty
                              ? null
                              : validateMobile(context, value),
                ),
                30.gap,
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: AppButton.text(
                        color: AppColor.white,
                        textStyle: AppTextStyle.style12B.copyWith(color: AppColor.primaryColor),
                        text: local.back,
                        onPressed: () => context.go(AppRoutes.login),
                      ),
                    ),
                    10.gap,
                    Expanded(
                      flex: 3,
                      child: AppButton.text(
                        loading: state.maybeWhen(orElse: () => false, loadingBankInfo: () => true),
                        text: local.create_new_account,
                        onPressed: () => context.read<RegisterCubit>().uploadBankInfo(),
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

  void _listener(BuildContext context, RegisterState state) {
    final local = AppLocalizations.of(context)!;

    state.maybeWhen(
      loadedBankInfo:
          () => SmartDialog.show(
            builder:
                (_) => WidgetDilog(
                  title: local.created_account,
                  message: local.account_created_success,
                  cancelText: local.home,
                  onCancel: () {
                    sl<Box>(instanceName: BoxKey.appBox).put(BoxKey.userStatusRegister, 'completed');
                    context.go(AppRoutes.layout);
                    SmartDialog.dismiss();
                  },
                ),
          ),
      errorBankInfo:
          (message) => SmartDialog.show(
            builder: (_) => WidgetDilog(isError: true, title: local.warning, message: message, cancelText: local.back, onCancel: () => SmartDialog.dismiss()),
          ),
      orElse: () => null,
    );
  }
}
