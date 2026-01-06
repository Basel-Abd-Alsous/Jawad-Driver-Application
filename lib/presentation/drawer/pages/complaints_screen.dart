import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extension/space_extension.dart';
import '../../../core/mixin/validate.mixin.dart';
import '../../../core/utils/color.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../core/widget/button/button_constant.dart';
import '../../../core/widget/widget_appbar.dart';
import '../../../core/widget/widget_text_field.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/drawer_cubit.dart';

class ComplaintsScreen extends StatelessWidget with FormValidationMixin {
  ComplaintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<DrawerCubit>(),
      child: Scaffold(
        appBar: WidgetAppbar.widgetAppBarWithTitle(context, l10n.support),
        body: BlocBuilder<DrawerCubit, DrawerState>(
          builder: (context, state) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: context.read<DrawerCubit>().formKey,
                child: Column(
                  children: [
                    Text(l10n.complaint_screen_message, style: Theme.of(context).textTheme.bodyMedium),
                    20.gap,
                    WidgetTextField(
                      l10n.email,
                      controller: context.read<DrawerCubit>().emailController,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: const Icon(Icons.email),
                      validator: (v) => validateEmail(context, v),
                    ),
                    10.gap,
                    WidgetTextField(
                      l10n.phoneNumber,
                      controller: context.read<DrawerCubit>().phoneController,
                      keyboardType: TextInputType.phone,
                      prefixIcon: const Icon(Icons.phone),
                      validator: (v) => validateMobile(context, v),
                    ),
                    10.gap,
                    WidgetTextField(l10n.message, controller: context.read<DrawerCubit>().messageController, prefixIcon: const Icon(Icons.message), validator: (v) => validateNull(context, v)),
                    10.gap,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(alignment: AlignmentDirectional.centerStart, child: Text(l10n.attachmentsOptional)),
                        AppButton.icon(
                          text: l10n.addAttachments,
                          fontColor: AppColor.secondColor,
                          leadingIconAssetName: Icon(Icons.attach_file, color: AppColor.secondColor, size: 20),
                          height: 10,
                          color: AppColor.white,
                          onPressed: context.read<DrawerCubit>().pickAttachments,
                        ),
                      ],
                    ),
                    if (context.read<DrawerCubit>().attachments.isNotEmpty) ...[
                      10.gap,
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: context.read<DrawerCubit>().attachments.length,
                        itemBuilder: (_, i) {
                          final file = context.read<DrawerCubit>().attachments[i];
                          return ListTile(
                            leading: const Icon(Icons.insert_drive_file),
                            title: Text(file.path.split('/').last),
                            trailing: AppButton.iconOnly(iconAssetName: Icons.close, height: AppButtonHeights.sm, color: AppColor.red600, onPressed: () {}),
                          );
                        },
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<DrawerCubit, DrawerState>(
          builder: (context, state) {
            return SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(padding: const EdgeInsets.all(16.0), child: AppButton.text(text: l10n.submitComplaint, height: AppButtonHeights.lg, onPressed: context.read<DrawerCubit>().submit)),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
