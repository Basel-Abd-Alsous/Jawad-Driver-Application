import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
 
import '../../../../core/router/router_key.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../../l10n/app_localizations.dart';

class WidgetForgetPassword extends StatelessWidget {
  const WidgetForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () => context.push(AppRoutes.forget),
        child: Text(
          local.forget_password,  
          style: AppTextStyle.style14.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
