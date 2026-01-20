import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extension/space_extension.dart';
import '../../../core/mixin/validate.mixin.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../core/widget/button/button_constant.dart';
import '../../../core/widget/widget_appbar.dart';
import '../../../core/widget/widget_text_field.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/drawer_cubit.dart';

class FeedbackScreen extends StatelessWidget with FormValidationMixin {
  FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => sl<DrawerCubit>()..getFeedbackCategory(),
      child: Scaffold(
        appBar: WidgetAppbar.widgetAppBarWithTitle(context, l10n.feedback),
        body: BlocBuilder<DrawerCubit, DrawerState>(
          builder: (context, state) {
            final cubit = context.read<DrawerCubit>();
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: cubit.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(l10n.complaint_screen_message, style: Theme.of(context).textTheme.bodyMedium),
                    20.gap,
                    ValueListenableBuilder(
                      valueListenable: cubit.feedbackCategory,
                      builder: (context, data, child) => DropdownButtonFormField<String>(
                        value: cubit.selectedFeedbackType,
                        decoration: InputDecoration(
                          hintText: l10n.pleaseSelectFeedbackType,
                          border: OutlineInputBorder(
                            gapPadding: 0,
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          disabledBorder: OutlineInputBorder(
                            gapPadding: 0,
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        items: (data?.payload ?? []).map((type) => DropdownMenuItem<String>(value: type.value.toString(), child: Text(type.label))).toList(),
                        onChanged: (value) => cubit.selectedFeedbackType = value,
                        validator: (value) => value == null || value.isEmpty ? l10n.pleaseSelectFeedbackType : null,
                      ),
                    ),
                    10.gap,
                    WidgetTextField(l10n.email, controller: cubit.emailController, keyboardType: TextInputType.emailAddress, validator: (v) => validateEmail(context, v)),
                    10.gap,
                    WidgetTextField(l10n.phoneNumber, controller: cubit.phoneController, keyboardType: TextInputType.phone, validator: (v) => validateMobile(context, v)),
                    10.gap,
                    WidgetTextField(l10n.message, maxLines: 5, controller: cubit.messageController, validator: (v) => validateNull(context, v)),
                    10.gap,
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
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: AppButton.text(text: l10n.submitComplaint, height: AppButtonHeights.lg, onPressed: () => context.read<DrawerCubit>().sendFeedback()),
                    ),
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
