import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/extension/space_extension.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widget/button/app_button.dart';
import '../../../../core/constant/app_image.dart';
import '../../../../core/cubits/localization_cubit/localization.cubit.dart';
import '../../../../core/router/router_key.dart';
import '../../../../l10n/app_localizations.dart';

class OnboardingLanguages extends StatelessWidget {
  const OnboardingLanguages({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      body: Container(
        color: AppColor.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(Assets.imagesJawadBlack, height: 0.3.sh),
                  30.gap,
                  AutoSizeText(local.select_language, style: AppTextStyle.style20B.copyWith(color: AppColor.white)),
                  20.gap,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: AppButton.icon(
                            text: local.arabic,
                            fontColor: AppColor.black,
                            color: AppColor.white,
                            borderRadius: 10000,
                            leadingIconAssetName: SvgPicture.asset(Assets.svgLanguage),
                            onPressed: () {
                              context.read<LanguageCubit>().changeLanguage('ar');
                              context.go(AppRoutes.onboarding);
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: AppButton.icon(
                            text: local.english,
                            fontColor: AppColor.black,
                            color: AppColor.white,
                            borderRadius: 10000,
                            leadingIconAssetName: SvgPicture.asset(Assets.svgLanguage),
                            onPressed: () {
                              context.read<LanguageCubit>().changeLanguage('en');
                              context.go(AppRoutes.onboarding);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
