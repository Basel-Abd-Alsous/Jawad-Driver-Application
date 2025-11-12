import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/svg.dart';
 
import '../extension/space_extension.dart';
import '../utils/color.dart';
import '../utils/text_style.dart';

class Empty extends StatelessWidget {
  final String imageName;
  final String title;
  final String desc;
  final bool? repeat;

  const Empty({super.key, required this.imageName, required this.title, this.repeat, required this.desc});

  @override
  Widget build(BuildContext context) {
    SmartDialog.dismiss();
    return Center(
      child: SizedBox(
        height: 0.5.sh,
        child: Column(
          children: [
            SvgPicture.asset(imageName, width: 100, height: 100),
            10.gap,
            AutoSizeText(title, textAlign: TextAlign.center, style: AppTextStyle.style16B),
            5.gap,
            Expanded(child: AutoSizeText(desc, style: AppTextStyle.style16.copyWith(color: AppColor.grey))),
          ],
        ),
      ),
    );
  }
}
