import 'package:flutter/material.dart';

import '../../../core/utils/text_style.dart';

class WidgetDrawerList extends StatelessWidget {
  final String title;
  final Widget icon;
  final Color? fontColor;
  final Function()? onTap;
  const WidgetDrawerList({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            icon,
            Text(
              title,
              style: AppTextStyle.style14
                  .copyWith(color: fontColor ?? Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
