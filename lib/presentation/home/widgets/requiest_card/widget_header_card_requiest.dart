import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/extension/space_extension.dart';
import '../../../../core/router/router_key.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widget/loading/widget_loading.dart';
import '../../../../core/widget/widget_cach_network_image.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/model/travel_requist_model.dart';
import '../../domain/status_travel_enum.dart';

class WidgetHeaderCardRequist extends StatelessWidget {
  final TravelRequest travilRequist;
  final bool? isLoading;
  final bool? isDetails;
  final TravelStatus? status;

  const WidgetHeaderCardRequist({super.key, required this.travilRequist, this.isLoading = false, this.status, this.isDetails = false});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000), border: Border.all(color: AppColor.secondColor, width: 1)),
          child: isLoading == true ? const WidgetLoading(width: 40, height: 40) : WidgetCachNetworkImage(radius: 1000, image: travilRequist.rider?.profileImage ?? ''),
        ),
        10.gap,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: isLoading == true ? 5 : 0,
            children: [
              isLoading == true ? const WidgetLoading(width: 80) : Text(travilRequist.rider?.name ?? '', style: AppTextStyle.style16B.copyWith(color: AppColor.black)),
              isLoading == true ? const WidgetLoading(width: 40) : Text('${local.tripNumber} - ${travilRequist.travelNo}', style: AppTextStyle.style12B.copyWith(color: AppColor.grey)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
          decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(1000)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 5,
            children: [
              isLoading == true
                  ? const WidgetLoading(width: 30)
                  : Text(
                    double.tryParse('${isDetails == true ? travilRequist.yourRate : travilRequist.rider?.rating ?? 0.0}')?.toStringAsFixed(1) ?? '0.0',
                    style: AppTextStyle.style12B.copyWith(color: AppColor.black),
                  ),
              SvgPicture.asset(Assets.svgStar, width: 25, color: isLoading == true ? AppColor.grey.withOpacity(0.4) : null),
              if (status != TravelStatus.pending && status != null)
                InkWell(onTap: () => context.push('${AppRoutes.chat}?id=${travilRequist.chatChannelId}'), child: const Icon(Icons.chat, color: AppColor.black)),
            ],
          ),
        ),
      ],
    );
  }
}
