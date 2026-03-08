import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/extension/space_extension.dart';
import '../../../../../core/mixin/validate.mixin.dart';
import '../../../../../core/utils/border_radius.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../controller/register/register_cubit.dart';
import '../../widgets/widget_login_button.dart';
import '../../widgets/widget_auth_text_field.dart';
import '../../../../../l10n/app_localizations.dart';

class RegisteContainer extends StatelessWidget with FormValidationMixin {
  RegisteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: AppColor.onSecondColor.withValues(alpha: 0.23), borderRadius: BorderRadius.circular(AppBorderRadius.lg16)),
          child: Form(
            key: context.read<RegisterCubit>().formKeyStep1,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        backgroundColor: Colors.transparent, // إذا بدك خلفية شفافة
                        insetPadding: const EdgeInsets.all(20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              spacing: 5,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(local.plate_number, style: AppTextStyle.style16B),
                                SizedBox(width: 250, height: 250, child: Image.asset('assets/images/1.jpeg', fit: BoxFit.contain)),
                                TextButton(onPressed: () => Navigator.pop(context), child: Text(local.back)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    spacing: 10,
                    children: [
                      const Icon(Icons.info_outline, size: 16, color: AppColor.white),
                      Text(local.enterIdNumber, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                    ],
                  ),
                ),
                WidgetAuthTextField(
                  hintText: local.enterIdNumber,
                  controller: context.read<RegisterCubit>().idNumber,
                  prefixIcon: const Icon(Icons.credit_card_rounded),
                  maxLength: 10,
                  validator: (value) => validateIdNumber(context, value),
                ),
                5.gap,
                Text(local.birth, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                WidgetAuthTextField(
                  hintText: local.birth,
                  controller: context.read<RegisterCubit>().bartheDate,
                  prefixIcon: const Icon(Icons.date_range),
                  readOnly: true,
                  validator: (value) => validateNull(context, value),
                  onTap: () async => await context.read<RegisterCubit>().selectDate(),
                ),
                5.gap,
                Text(local.mobile, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                WidgetAuthTextField(
                  hintText: local.mobile_hint,
                  controller: context.read<RegisterCubit>().mobile,
                  keyboardType: TextInputType.phone,
                  prefixIcon: const Icon(Icons.phone),
                  validator: (value) => validateMobile(context, value),
                ),
                10.gap,
                const WidgetAuthButton(isRegister: true),
                10.gap,
                Text(local.create_account_terms, style: AppTextStyle.style12.copyWith(color: AppColor.white)),
                20.gap,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(local.already_have_account, style: AppTextStyle.style12.copyWith(color: AppColor.white)),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () => context.pop(),
                      child: Text(local.login, style: AppTextStyle.style12B.copyWith(color: Colors.white)),
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
}
