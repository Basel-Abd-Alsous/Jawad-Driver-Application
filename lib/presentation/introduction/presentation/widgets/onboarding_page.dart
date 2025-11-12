import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/extension/space_extension.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';

class OnboardingPage extends StatelessWidget {
  final String imageName;
  final String title;
  final String description;

  const OnboardingPage({super.key, required this.imageName, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.srcATop),
          child: Image.asset(imageName, height: 1.sh, fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              15.h.gap,
              Text(title, textAlign: TextAlign.center, style: AppTextStyle.style22B.copyWith(color: AppColor.white)),
              15.gap,
              Text(description, textAlign: TextAlign.center, style: AppTextStyle.style18.copyWith(color: AppColor.white)),
            ],
          ),
        ),
      ],
    );
  }
}
