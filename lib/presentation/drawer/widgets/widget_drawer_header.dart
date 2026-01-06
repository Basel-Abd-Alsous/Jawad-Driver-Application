import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/services/hive/box_key.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/widget_cach_network_image.dart';
import '../../../injection_container.dart';
import '../../layout/domain/model/user_model.dart';

class WidgetDrawerHeader extends StatelessWidget {
  const WidgetDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: ValueListenableBuilder(
        valueListenable: sl<Box<Driver>>().listenable(),
        builder: (context, box, _) {
          Driver? driver = box.get(BoxKey.user);
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10000), border: Border.all(color: AppColor.secondColor, width: 2)),
                  child: WidgetCachNetworkImage(
                    radius: 10000,
                    image:
                        driver?.profileImage?.contains('logo') ?? true
                            ? 'https://images.squarespace-cdn.com/content/v1/5936fbebcd0f68f67d5916ff/a711669d-0d96-4748-9bdb-5a86d5e5ecdd/person-placeholder-300x300.jpeg'
                            : driver?.profileImage ?? '',
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(driver?.firstName ?? '', style: AppTextStyle.style16B.copyWith(color: Colors.black), overflow: TextOverflow.ellipsis),
                    Text(driver?.phone ?? '', style: AppTextStyle.style16B.copyWith(color: AppColor.secondColor)),
                    Row(children: [Icon(Icons.star, color: Colors.amber, size: 25), Text('${driver?.rating ?? 0.0}', style: AppTextStyle.style16B.copyWith(color: AppColor.black))]),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
