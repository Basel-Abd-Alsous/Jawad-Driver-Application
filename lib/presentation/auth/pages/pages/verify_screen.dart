import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../controller/forget/forget_cubit.dart';
import '../../controller/login/login_cubit.dart';
import '../../controller/register/register_cubit.dart';
import '../widgets/widget_auth_background.dart';
import 'containers/verify_container.dart';
import '../widgets/forget_hint_text.dart';
import '../../../../l10n/app_localizations.dart';

class VerifyScreen extends StatelessWidget {
  final bool? isLogin;
  final bool? isRegister;
  final String phoneNumber;
  const VerifyScreen({super.key, required this.phoneNumber, this.isLogin = false, this.isRegister = false});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const WidgetAuthBackground(),
            ForgetHintText(
              title: local.verify_title,
              description: local.verify_description,
              child: MultiBlocProvider(
                providers: [
                  BlocProvider<LoginCubit>(create: (context) => sl<LoginCubit>()),
                  BlocProvider<RegisterCubit>(create: (context) => sl<RegisterCubit>()),
                  BlocProvider<ForgetCubit>(create: (context) => sl<ForgetCubit>()),
                ],
                child: VerifyContainer(phoneNumber: phoneNumber, isLogin: isLogin, isRegister: isRegister),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
