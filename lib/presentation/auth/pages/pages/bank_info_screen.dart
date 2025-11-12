import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../controller/register/register_cubit.dart';
import '../widgets/forget_hint_text.dart';
import '../widgets/widget_auth_background.dart';
import 'containers/bank_info_container.dart';

class BankInfoScreen extends StatelessWidget {
  const BankInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const WidgetAuthBackground(),
            ForgetHintText(
              title: local.enter_banking_info_title,
              description: local.enter_banking_info_description,
              child: BlocProvider(create: (context) => sl<RegisterCubit>(), child: BankInfoContainer()),
            ),
          ],
        ),
      ),
    );
  }
}
