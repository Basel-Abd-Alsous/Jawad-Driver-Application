import 'package:flutter/material.dart';

import '../../extension/space_extension.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';
import 'widget_loading.dart';

class LoadingDocuments extends StatelessWidget {
  const LoadingDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('ملفاتي', style: AppTextStyle.style14B.copyWith(color: Colors.black)),
          10.gap,
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 8,
            separatorBuilder: (context, index) => Divider(height: 10),
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                leading: Icon(Icons.perm_contact_calendar_sharp, color: AppColor.grey.withOpacity(0.5), size: 30),
                title: Row(children: [WidgetLoading(width: 100)]),
                trailing: Icon(Icons.timelapse_sharp, color: AppColor.grey.withOpacity(0.5), size: 30),
              );
            },
          ),
        ],
      ),
    );
  }
}
