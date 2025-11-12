import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:go_router/go_router.dart';

import '../../../../core/router/router_key.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../controller/forget/forget_cubit.dart';
import '../widgets/widget_auth_background.dart';
import 'containers/change_password_container.dart';
import '../widgets/forget_hint_text.dart';

class ChangePasswordScreen extends StatelessWidget {
  final String phoneNumber;
  const ChangePasswordScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (result, s) async => !result ? context.go(AppRoutes.login) : null,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              const WidgetAuthBackground(),
              ForgetHintText(
                isBackToLogin: true,
                title: local.add_new_password_title,
                description: local.add_new_password_description,
                child: BlocProvider(
                  create: (context) => sl<ForgetCubit>(),
                  child: ChangePasswordContainer(phoneNumber: phoneNumber),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
