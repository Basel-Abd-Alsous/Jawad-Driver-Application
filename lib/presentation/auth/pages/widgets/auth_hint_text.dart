import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
import '../../../../core/constant/app_image.dart';
import '../../../../core/extension/space_extension.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';
import '../pages/containers/login_container.dart';
import '../pages/containers/register_container.dart';
import '../../../../../l10n/app_localizations.dart';

class AuthHintText extends StatelessWidget {
  final bool? isRegiste;
  const AuthHintText({super.key, this.isRegiste = false});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            0.03.sh.gap,
            Center(child: Image.asset(Assets.imagesJawadEmptyWhite, width: 0.3.sw)),
            0.04.sh.gap,
            Text(
              isRegiste == true 
                  ? local.auth_register_title  // e.g. "Register and go with us!"
                  : local.auth_login_title,    // e.g. "Log in and enjoy your journey!",
              style: AppTextStyle.style20B.copyWith(color: AppColor.white, height: 1.2),
            ),
            10.gap,
            Text(
              isRegiste == true
                  ? local.auth_register_subtitle  // e.g. "Whether you are a passenger or a driver..."
                  : local.auth_login_subtitle,     // e.g. "Whether you're a rider or a driver...",
              style: AppTextStyle.style16.copyWith(color: AppColor.white, height: 1.3),
            ),
            40.gap,
            isRegiste == true ? RegisteContainer() : LoginContainer(),
          ],
        ),
      ),
    );
  }
}
