// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/app_image.dart';

class WidgetAuthBackground extends StatelessWidget {
  const WidgetAuthBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          SizedBox(
            height: 0.77.sh,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.srcATop),
              child: Image.asset(Assets.imagesLoginImage, height: 1.sh, fit: BoxFit.fill),
            ),
          ),
          SizedBox(height: 0.23.sh),
        ],
      ),
    );
  }
}
