import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extension/space_extension.dart';
import '../../../core/mixin/validate.mixin.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../core/widget/widget_appbar.dart';
import '../../../core/widget/widget_text_field.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/profile_cubit.dart';
import '../widget/widget_buyer_image.dart';

class ProfileScreen extends StatelessWidget with FormValidationMixin {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<ProfileCubit>(),
      child: Scaffold(
        appBar: WidgetAppbar.widgetAppBarWithTitle(context, local.editProfile),
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),

              child: Form(
                key: context.read<ProfileCubit>().keyForm,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    10.gap,
                    const Center(child: WidgetDriverImage()),
                    10.gap,
                    Text(local.full_name, style: AppTextStyle.style14B),
                    5.gap,
                    WidgetTextField(local.full_name, controller: context.read<ProfileCubit>().name, validator: (value) => validateNull(context, value)),
                    10.gap,
                    Text(local.email, style: AppTextStyle.style14B),
                    5.gap,
                    WidgetTextField('example@example.com', controller: context.read<ProfileCubit>().email, validator: (value) => validateEmail(context, value)),
                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<ProfileCubit, ProfileState>(
          builder:
              (context, state) => SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: [Expanded(child: AppButton.text(text: local.submit, onPressed: () => context.read<ProfileCubit>().updateProfile()))]),
                ),
              ),
        ),
      ),
    );
  }
}
