import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/mixin/validate.mixin.dart';
import '../../../../injection_container.dart';
import '../../controller/forget/forget_cubit.dart';
import '../../../../l10n/app_localizations.dart';
import '../widgets/widget_auth_background.dart';
import 'containers/forget_container.dart';
import '../widgets/forget_hint_text.dart';

class ForgetPasswordScreen extends StatelessWidget with FormValidationMixin {
  ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const WidgetAuthBackground(),
            ForgetHintText(
              title: local.forget_password_title,
              description: local.forget_password_description,
              child: BlocProvider(create: (context) => sl<ForgetCubit>(), child: ForgetContainer()),
            ),
          ],
        ),
      ),
    );
  }
}
