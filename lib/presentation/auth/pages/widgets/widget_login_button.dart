import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/router_key.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../controller/login/login_cubit.dart';
import '../../controller/register/register_cubit.dart';
import '../../../../../l10n/app_localizations.dart';

class WidgetAuthButton extends StatelessWidget {
  final bool? isRegister;
  const WidgetAuthButton({super.key, this.isRegister = false});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, stateLogin) {
          return BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, stateRegister) {
              return AppButton.text(
                loading:
                    isRegister == true
                        ? stateRegister.maybeWhen(orElse: () => false, loadingSignUp: () => true)
                        : stateLogin.maybeWhen(orElse: () => false, loadingLogin: () => true),
                textStyle: AppTextStyle.style16B.copyWith(color: AppColor.white),
                text: isRegister == true ? local.continues : local.login,
                onPressed: () async {
                  if (isRegister == false) {
                    await context.read<LoginCubit>().login();
                  } else {
                    if (context.read<RegisterCubit>().formKeyStep1.currentState!.validate()) {
                      context.push(AppRoutes.carInfo);
                    }
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}
