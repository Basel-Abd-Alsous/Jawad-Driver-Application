import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/router/router_key.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../core/widget/widget_cach_network_image.dart';
import '../../../injection_container.dart';
import '../../layout/controller/layout_cubit.dart';
import '../../layout/domain/model/user_model.dart';
import 'widget_available_switch.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    context.read<LayoutCubit>().scaffoldKey.currentState!.openDrawer();
                  },
                  child: ValueListenableBuilder<Box<Driver>>(
                    valueListenable: sl<Box<Driver>>().listenable(),
                    builder: (context, box, _) {
                      Driver? driver = box.get(BoxKey.user);
                      return Container(
                        margin: const EdgeInsets.all(8),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        width: 0.05.sh,
                        height: 0.05.sh,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10000)),
                        child: WidgetCachNetworkImage(
                          image: driver?.profileImage?.contains('logo') ?? true
                              ? 'https://images.squarespace-cdn.com/content/v1/5936fbebcd0f68f67d5916ff/a711669d-0d96-4748-9bdb-5a86d5e5ecdd/person-placeholder-300x300.jpeg'
                              : driver?.profileImage ?? '',
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Image(image: const AssetImage(Assets.imagesJawadEmptyBlack), width: 0.15.sh),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 2,
              children: [
                InkWell(
                  onTap: () => context.push(AppRoutes.notification),
                  child: SizedBox(width: 0.05.sh, height: 0.05.sh, child: SvgPicture.asset(Assets.svgNotifictaion)),
                ),
              ],
            ),
          ],
        ),
        10.gap,
        const WidgetAvailableSwitch(),
      ],
    );
  }
}
