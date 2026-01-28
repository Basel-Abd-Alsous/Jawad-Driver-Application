import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extension/space_extension.dart';
import '../../../core/utils/color.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../l10n/app_localizations.dart';
import '../../home/domain/model/travel_requist_model.dart';
import '../../home/widgets/requiest_card/widget_header_card_requiest.dart';
import '../../home/widgets/requiest_card/widget_text_for_card_requiest.dart';
import '../controller/visit_details/visit_details_cubit.dart';
import '../domain/model/visit_details_model.dart';

class ContainerVisitDetails extends StatelessWidget {
  final VisitDetailsModel? date;
  final bool? isLoading;
  const ContainerVisitDetails({super.key, this.date, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          20.gap,
          WidgetHeaderCardRequist(
            isDetails: true,
            travilRequist: TravelRequest(rider: date?.payload?.rider, travelNo: date?.payload?.travelNo, yourRate: '${double.tryParse(date?.payload?.yourRate ?? '0.0')}'),
            isLoading: isLoading,
          ),
          10.gap,
          WidgetTextForCardRequiest(title: local.destination, value: date?.payload?.arriveLocation ?? '', isLoading: isLoading),
          5.gap,
          WidgetTextForCardRequiest(title: local.departure, value: date?.payload?.pickupLocation ?? '', isLoading: isLoading),
          5.gap,
          WidgetTextForCardRequiest(title: local.distance, value: '${double.tryParse('${date?.payload?.distance ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'} Km', isLoading: isLoading),
          10.gap,
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: WidgetTextForCardRequiest(
                  title: local.amount,
                  value: '${double.tryParse('${date?.payload?.amount ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'}',
                  isAmount: true,
                  isLoading: isLoading,
                ),
              ),
              Expanded(
                child: WidgetTextForCardRequiest(
                  title: local.driver_profit,
                  isAmount: true,
                  value: '${double.tryParse('${date?.payload?.driverProfit ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'}',
                  isLoading: isLoading,
                ),
              ),
              Expanded(
                child: WidgetTextForCardRequiest(
                  title: local.commission,
                  value: '${double.tryParse('${date?.payload?.comission ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'}',
                  isAmount: true,
                  isLoading: isLoading,
                ),
              ),
            ],
          ),
          10.gap,
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: WidgetTextForCardRequiest(title: local.riderdebtpaid, value: '${double.tryParse('${date?.payload?.riderDebtPaid ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'}', isAmount: true),
              ),
              Expanded(
                child: WidgetTextForCardRequiest(
                  title: local.chargeclientwallet,
                  value: '${double.tryParse('${date?.payload?.chargeClientWallet ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'}',
                  isAmount: true,
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          40.gap,
          if (date?.payload?.yourRate == null || date?.payload?.yourRate == "")
            Row(
              children: [
                Expanded(
                  child: AppButton.icon(
                    leadingIconAssetName: const Icon(Icons.star, color: AppColor.white),
                    text: local.addRating,
                    color: AppColor.secondColor,
                    onPressed: () {
                      context.read<VisitDetailsCubit>().showAddRatingBottomSheet(context, date!.payload!.id!);
                    },
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
