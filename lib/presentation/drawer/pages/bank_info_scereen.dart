import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

import '../../../core/extension/space_extension.dart';
import '../../../core/mixin/validate.mixin.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../core/widget/widget_appbar.dart';
import '../../../core/widget/widget_text_field.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../layout/domain/model/user_model.dart';
import '../controller/drawer_cubit.dart';

class EditBankInfoScereen extends StatelessWidget with FormValidationMixin {
  EditBankInfoScereen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<DrawerCubit>(),
      child: Scaffold(
        appBar: WidgetAppbar.widgetAppBarWithTitle(context, AppLocalizations.of(context)!.bank_info),
        body: BlocBuilder<DrawerCubit, DrawerState>(
          builder: (context, state) {
            final cubit = context.read<DrawerCubit>();
            return ValueListenableBuilder<Box<Driver>>(
              valueListenable: sl<Box<Driver>>().listenable(),
              builder: (context, box, _) {
                Driver? driver = box.get(BoxKey.user);
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: cubit.formKeyBankInfo,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(local.bank_name, style: AppTextStyle.style14B.copyWith(color: AppColor.black, height: 1.2)),
                        WidgetTextField(
                          local.enter_bank_name,
                          controller: driver?.bankInfo != null ? TextEditingController(text: driver?.bankInfo?.bankName) : cubit.bankName,
                          keyboardType: TextInputType.text,
                          validator: (value) => cubit.stcpay.text.isNotEmpty ? null : validateNull(context, value),
                        ),
                        5.gap,
                        Text(local.iban, style: AppTextStyle.style14B.copyWith(color: AppColor.black, height: 1.2)),
                        WidgetTextField(
                          local.enter_iban,
                          controller: cubit.iban,
                          maxLength: 24,
                          keyboardType: TextInputType.text,
                          validator: (value) => cubit.stcpay.text.isNotEmpty ? null : validateIBAN(context, value),
                        ),
                        20.gap,
                        Row(
                          spacing: 5,
                          children: [
                            Expanded(child: Container(height: 2, color: AppColor.black)),
                            Text('OR', style: AppTextStyle.style14B.copyWith(color: AppColor.black, height: 1.2)),
                            Expanded(child: Container(height: 2, color: AppColor.black)),
                          ],
                        ),
                        20.gap,
                        Text('STCpay', style: AppTextStyle.style14B.copyWith(color: AppColor.black, height: 1.2)),
                        5.gap,
                        WidgetTextField(
                          local.mobile_hint,
                          controller: cubit.stcpay,
                          keyboardType: TextInputType.phone,
                          prefixIcon: const Icon(Icons.phone),
                          validator: (value) => cubit.iban.text.isNotEmpty || cubit.bankName.text.isNotEmpty ? null : validateMobile(context, value),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<DrawerCubit, DrawerState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom + 10, left: 16, right: 16),
              child: SafeArea(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: AppButton.text(
                        loading: state.maybeWhen(orElse: () => false, loadingBankInfo: () => true),
                        text: local.update,
                        onPressed: () => context.read<DrawerCubit>().uploadBankInfo(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
