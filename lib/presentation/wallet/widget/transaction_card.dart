import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
 
import '../../../core/constant/app_image.dart';
import '../../../core/function/hex_color.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/loading/widget_loading.dart';
import '../domain/model/transactions_model.dart';

class TransactionItem extends StatelessWidget {
  final Transaction? data;
  final bool? loading;

  const TransactionItem({super.key, this.data, this.loading = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: AppColor.grey.withOpacity(0.5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: loading == true ? 5 : 0,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: loading == true ? 5 : 0,
            children: [
              loading == true
                  ? WidgetLoading(width: 30)
                  : Row(
                    spacing: 5,
                    children: [SvgPicture.asset(Assets.svgSar, width: 20, height: 20), Text(data?.balance ?? "", style: AppTextStyle.style22B)],
                  ),
              loading == true ? WidgetLoading(width: 60) : Text(data?.date.toString().substring(0, 10) ?? '', style: AppTextStyle.style12),
            ],
          ),
          loading == true
              ? WidgetLoading(width: 60)
              : Text(data?.status?.label ?? "", style: AppTextStyle.style14B.copyWith(color: HexColor.fromHex(data?.status?.color ?? ''))),
          loading == true
              ? Column(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [WidgetLoading(width: double.infinity), WidgetLoading(width: double.infinity), WidgetLoading(width: 200)],
              )
              : Text(data?.notes ?? "", style: AppTextStyle.style12),
        ],
      ),
    );
  }
}
