import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/router/router_key.dart';
import '../../../../core/extension/space_extension.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';

class ForgetHintText extends StatelessWidget {
  final String title;
  final String description;
  final Widget child;
  final bool? isBackToLogin;
  const ForgetHintText({super.key, required this.title, required this.description, required this.child, this.isBackToLogin = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                0.03.sh.gap,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () => context.go(AppRoutes.login), icon: const Icon(Icons.arrow_back_ios, color: AppColor.white)),
                    Image.asset(Assets.imagesJawadEmptyWhite, width: 0.3.sw),
                    IconButton(onPressed: () {}, icon: const SizedBox()),
                  ],
                ),
                0.04.sh.gap,
                Text(title, style: AppTextStyle.style20B.copyWith(color: AppColor.white, height: 1.2)),
                10.gap,
                Text(description, style: AppTextStyle.style16.copyWith(color: AppColor.white, height: 1.3)),
                40.gap,
                child,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
