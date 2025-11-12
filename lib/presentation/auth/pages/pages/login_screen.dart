import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../controller/login/login_cubit.dart';
import '../../controller/register/register_cubit.dart';
import '../widgets/widget_auth_background.dart';
import '../widgets/auth_hint_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            WidgetAuthBackground(),
            MultiBlocProvider(
              providers: [
                BlocProvider<LoginCubit>(create: (context) => sl<LoginCubit>()),
                BlocProvider<RegisterCubit>(create: (context) => sl<RegisterCubit>()),
              ],
              child: AuthHintText(),
            ),
          ],
        ),
      ),
    );
  }
}
