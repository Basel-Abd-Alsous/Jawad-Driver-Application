import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

import '../../../core/services/hive/box_key.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/widget_cach_network_image.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../layout/domain/model/user_model.dart';

class WidgetDrawerHeader extends StatelessWidget {
  const WidgetDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ValueListenableBuilder<Box<Driver>>(
        valueListenable: sl<Box<Driver>>().listenable(),
        builder: (context, box, _) {
          Driver? driver = box.get(BoxKey.user);
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  /// Driver Image
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10000),
                      border: Border.all(color: AppColor.secondColor, width: 2),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: WidgetCachNetworkImage(
                      radius: 10000,
                      image: driver?.profileImage?.contains('logo') ?? true
                          ? 'https://images.squarespace-cdn.com/content/v1/5936fbebcd0f68f67d5916ff/a711669d-0d96-4748-9bdb-5a86d5e5ecdd/person-placeholder-300x300.jpeg'
                          : driver?.profileImage ?? '',
                    ),
                  ),

                  /// VALID Icon
                  Positioned(
                    top: -2,
                    right: -2,
                    child: Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                      child: (driver?.legalStatus?.toUpperCase() == 'VALID')
                          ? const Icon(Icons.check_circle, color: AppColor.green, size: 20)
                          : const Icon(Icons.cancel, color: AppColor.red, size: 20),
                    ),
                  ),

                  /// Rating at bottom
                  Positioned(
                    bottom: -8, // لو حابب يكون خارجي شوي
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [BoxShadow(blurRadius: 4, color: Colors.black12)],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 16),
                            const SizedBox(width: 4),
                            Text('${driver?.rating ?? 0.0}', style: AppTextStyle.style12B.copyWith(color: AppColor.black)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: [
                    Text(
                      driver?.firstName ?? '',
                      style: AppTextStyle.style14B.copyWith(color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(driver?.phone ?? '', style: AppTextStyle.style14B.copyWith(color: AppColor.secondColor)),
                    Text("${local.carStatus} : ${driver?.carInfo?.legalStatus ?? ''}", style: AppTextStyle.style14B.copyWith(color: AppColor.secondColor)),
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
