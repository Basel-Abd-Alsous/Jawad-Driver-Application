import 'package:flutter/material.dart';

import '../../../core/extension/space_extension.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/loading/widget_loading.dart';
import '../../../core/widget/widget_cach_network_image.dart';
import '../domain/model/notifications_model.dart';

class NotificationItem extends StatelessWidget {
  final NotificationData? notification;
  final bool? loading;
  const NotificationItem({super.key, this.notification, this.loading = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: AppColor.grey)),
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child:
                    loading == true
                        ? const WidgetLoading(width: 40, height: 40, radius: 1000)
                        : WidgetCachNetworkImage(radius: 1000, image: notification?.image ?? ""),
              ),
              10.gap,
              loading == true
                  ? const WidgetLoading(width: 40)
                  : Text((notification?.createdAt ?? DateTime.now()).toString().substring(0, 10), style: AppTextStyle.style12),
            ],
          ),
          10.gap,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loading == true ? const WidgetLoading(width: 70) : Text(notification?.title ?? '', style: AppTextStyle.style14B),
                10.gap,
                loading == true
                    ? const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 5,
                      children: [
                        WidgetLoading(width: double.infinity),
                        WidgetLoading(width: double.infinity),
                        WidgetLoading(width: double.infinity),
                        WidgetLoading(width: 70),
                      ],
                    )
                    : Text(notification?.message ?? '', style: AppTextStyle.style12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
