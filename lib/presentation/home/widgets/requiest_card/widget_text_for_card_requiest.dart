import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/extension/space_extension.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widget/loading/widget_loading.dart';

class WidgetTextForCardRequiest extends StatelessWidget {
  final String title;
  final String value;
  final bool? isAmount;
  final bool? isLoading;

  const WidgetTextForCardRequiest({super.key, required this.title, required this.value, this.isAmount = false, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyle.style12B.copyWith(color: AppColor.grey)),
        5.gap,
        Row(
          children: [
            Expanded(
              child:
                  isLoading == true
                      ? Row(children: [WidgetLoading(width: 100)])
                      : Text(value, style: AppTextStyle.style14, maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
            if (isAmount == true) ...[
              10.gap,
              SvgPicture.asset(Assets.svgSar, width: 17, height: 17, color: isLoading == false ? null : AppColor.grey.withOpacity(0.4)),
            ],
          ],
        ),
      ],
    );
  }
}
