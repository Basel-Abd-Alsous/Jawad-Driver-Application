import 'package:flutter/material.dart';

import '../extension/space_extension.dart';
import '../utils/color.dart';
import '../utils/text_style.dart';

class WidgetTowText extends StatelessWidget {
  final String text1;
  final String? text2;
  final TextStyle? testStyle1;
  final TextStyle? testStyle2;
  final bool? isFavorite;
  final Function()? onTapFavorite;
  const WidgetTowText({super.key, required this.text1, this.text2, this.isFavorite = false, this.onTapFavorite, this.testStyle1, this.testStyle2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: testStyle1 != null ? EdgeInsets.zero : const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            child: Text(text1, overflow: TextOverflow.ellipsis, maxLines: 1, style: testStyle1 ?? AppTextStyle.style14B.copyWith(color: AppColor.black)),
          ),
          if (text2 != '' && text2 != null) ...[
            10.gap,
            Expanded(child: Text(text2 ?? '', textAlign: TextAlign.end, style: testStyle2 ?? AppTextStyle.style12.copyWith(color: AppColor.grey))),
          ],
        ],
      ),
    );
  }
}
