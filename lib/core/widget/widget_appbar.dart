import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../injection_container.dart';
import '../../presentation/layout/domain/model/user_model.dart';
import '../constant/app_image.dart';
import '../router/router_key.dart';
import '../services/hive/box_key.dart';
import '../utils/text_style.dart';
import 'widget_cach_network_image.dart';

class WidgetAppbar {
  WidgetAppbar._();

  static AppBar widgetAppBar(BuildContext context, GlobalKey<ScaffoldState> key) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Image(image: AssetImage(Assets.imagesJawadWhite), width: 0.15.sh),
      leading: InkWell(
        onTap: () {
          key.currentState?.openDrawer();
        },
        child: ValueListenableBuilder(
          valueListenable: sl<Box<Driver>>().listenable(),
          builder: (context, value, child) {
            Driver? profile = sl<Box<Driver>>().get(BoxKey.user);
            return Container(
              margin: EdgeInsets.all(8),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: 0.05.sh,
              height: 0.05.sh,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10000)),
              child: WidgetCachNetworkImage(
                image:
                    profile?.profileImage?.contains('logo') ?? true
                        ? 'https://images.squarespace-cdn.com/content/v1/5936fbebcd0f68f67d5916ff/a711669d-0d96-4748-9bdb-5a86d5e5ecdd/person-placeholder-300x300.jpeg'
                        : profile?.profileImage ?? '',
              ),
            );
          },
        ),
      ),
      actions: [
        InkWell(
          onTap: () => context.push(AppRoutes.notification),
          child: SizedBox(width: 0.05.sh, height: 0.05.sh, child: SvgPicture.asset(Assets.svgNotifictaion)),
        ),
      ],
    );
  }

  static AppBar widgetAppBarWithTitle(BuildContext context, String title) {
    return AppBar(backgroundColor: Colors.white, centerTitle: true, title: Text(title, style: AppTextStyle.style16B));
  }
}
