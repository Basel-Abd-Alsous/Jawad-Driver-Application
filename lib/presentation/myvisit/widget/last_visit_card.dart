// ignore_for_file: deprecated_member_use


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/router/router_key.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/loading/widget_loading.dart';
import '../../../core/widget/widget_cach_network_image.dart';
import '../../../core/widget/widget_tow_text.dart';
import '../domain/model/visit_model.dart';

class LastVisitCard extends StatelessWidget {
  final Travel? travel;
  final bool? loading;

  const LastVisitCard({super.key, this.travel, this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading == true ? null : () => context.push('${AppRoutes.visitDetails}?id=${travel?.id ?? ''}'),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: AppColor.grey.withOpacity(0.5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 5,
              children: [
                SvgPicture.asset(Assets.svgVisit, width: 20, height: 20, color: loading == true ? AppColor.grey : AppColor.black),
                loading == true ? WidgetLoading(width: 160) : Expanded(child: WidgetTowText(text1: travel?.arriveLocation ?? '')),
              ],
            ),
            Divider(color: AppColor.grey.withOpacity(0.5), height: 1.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                loading == true
                    ? Padding(padding: const EdgeInsets.all(5.0), child: WidgetLoading(width: 80))
                    : Expanded(child: WidgetTowText(text1: (travel?.arrivalTime ?? '- - - - - - - - - -').substring(0, 10))),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5,
                    children: [
                      loading == true ? WidgetLoading(width: 40) : Text(travel?.amount ?? '', style: AppTextStyle.style14B.copyWith(color: AppColor.black)),
                      SvgPicture.asset(Assets.svgSar, width: 20, height: 20, color: loading == true ? AppColor.grey : AppColor.black),
                    ],
                  ),
                ),
              ],
            ),
            if (loading == true) 5.gap,
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                spacing: 5,
                children: [
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10000)),
                    child:
                        loading == true
                            ? WidgetLoading(width: 35, height: 35)
                            : WidgetCachNetworkImage(radius: 10000, image: travel?.rider?.profileImage ?? ''),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: loading == true ? 7 : 0,
                      children: [
                        loading == true
                            ? Row(children: [WidgetLoading(width: 100)])
                            : Text(
                              (travel?.rider?.name ?? '')
                                  .toUpperCase(),
                              style: AppTextStyle.style12B,
                            ),
                        loading == true
                            ? Row(children: [WidgetLoading(width: 60)])
                            : Text((travel?.rider?.phone ?? '').toUpperCase(), style: AppTextStyle.style10.copyWith(color: AppColor.grey)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5,
                    children: [
                      loading == true
                          ? Row(children: [WidgetLoading(width: 30)])
                          : Text('${double.tryParse('${travel?.yourRate ?? 0}') ?? ''}', style: AppTextStyle.style12B.copyWith(color: AppColor.black)),
                      SvgPicture.asset(Assets.svgStar),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
