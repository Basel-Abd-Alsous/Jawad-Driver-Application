import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../controller/login/login_cubit.dart';
import '../widgets/widget_auth_background.dart';
import '../widgets/auth_hint_text.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            WidgetAuthBackground(),
            MultiBlocProvider(providers: [BlocProvider<LoginCubit>(create: (context) => sl<LoginCubit>())], child: AuthHintText(isRegiste: true)),
          ],
        ),
      ),
    );
  }
}
