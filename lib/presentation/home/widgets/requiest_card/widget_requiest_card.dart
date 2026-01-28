import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliding_action_button/sliding_action_button.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/extension/space_extension.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../auth/pages/widgets/widget_auth_text_field.dart';
import '../../controller/home_cubit.dart';
import '../../domain/model/travel_requist_model.dart';
import '../../domain/status_travel_enum.dart';
import 'widget_header_card_requiest.dart';
import 'widget_text_for_card_requiest.dart';

class WidgetCardRequiest extends StatelessWidget {
  final TravelRequest travilRequist;
  final TravelStatus status;

  const WidgetCardRequiest({super.key, required this.travilRequist, required this.status});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: status != TravelStatus.pending ? null : Border.all(color: AppColor.grey.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WidgetHeaderCardRequist(travilRequist: travilRequist, status: status),
          10.gap,
          WidgetTextForCardRequiest(title: local.destination, value: travilRequist.arriveLocation ?? ''),
          5.gap,
          WidgetTextForCardRequiest(title: local.departure, value: travilRequist.pickupLocation ?? ''),
          5.gap,
          WidgetTextForCardRequiest(title: local.distance, value: '${double.tryParse('${travilRequist.distance ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'} Km'),
          5.gap,
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: WidgetTextForCardRequiest(title: local.amount, value: '${double.tryParse('${travilRequist.amount ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'}', isAmount: true),
              ),
              Expanded(
                child: WidgetTextForCardRequiest(title: local.driver_profit, isAmount: true, value: '${double.tryParse('${travilRequist.driverProfit ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'}'),
              ),
              Expanded(
                child: WidgetTextForCardRequiest(title: local.commission, value: '${double.tryParse('${travilRequist.comission ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'}', isAmount: true),
              ),
            ],
          ),

          10.gap,
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: WidgetTextForCardRequiest(title: local.riderdebtpaid, value: '${double.tryParse('${travilRequist.riderDebtPaid ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'}', isAmount: true),
              ),
               Expanded(
                child: WidgetTextForCardRequiest(
                  title: local.chargeclientwallet,
                  value: '${double.tryParse('${travilRequist.chargeClientWallet ?? 0.0}')?.toStringAsFixed(3) ?? '0.0'}',
                  isAmount: true,
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          15.gap,
          if ((status == TravelStatus.pending) || (status == TravelStatus.assigned)) ...[
            Column(
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      flex: 3,
                      child: AppButton.text(
                        text: _titleButtom(status, local),
                        color: status == TravelStatus.assigned ? Colors.blueAccent.shade200 : Colors.green,
                        onPressed: () => _switchFunctionByStatus(context, status, null),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: AppButton.text(text: _titleButtomTow(status, local), color: AppColor.red, onPressed: () => _switchFunctionByStatusButtonTow(context, status)),
                    ),
                  ],
                ),
                if ((status == TravelStatus.assigned)) ...[
                  10.gap,
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: AppButton.text(text: local.arrived_destination_button, color: Colors.green, onPressed: () => context.read<HomeCubit>().arrivalTravel(travilRequist.id ?? 0)),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ],
          if ((status != TravelStatus.pending) && (status != TravelStatus.assigned)) ...[
            10.gap,
            if (status == TravelStatus.started)
              Center(
                child: CircleSlideToActionButton(
                  slideToActionController: context.read<HomeCubit>().circleSlideToActionController,
                  width: MediaQuery.of(context).size.width * 0.9,
                  parentBoxRadiusValue: 27,
                  circleSlidingButtonSize: 47,
                  leftEdgeSpacing: 3,
                  initialSlidingActionLabel: local.finish_trip,
                  finalSlidingActionLabel: local.finish_trip,
                  circleSlidingButtonBackgroundColor: AppColor.white,
                  circleSlidingButtonIcon: Icon(Icons.arrow_back, color: AppColor.primaryColor),
                  parentBoxGradientBackgroundColor: LinearGradient(colors: [AppColor.primaryColor, Colors.grey]),
                  initialSlidingActionLabelTextStyle: AppTextStyle.style16B.copyWith(color: AppColor.white),
                  parentBoxDisableGradientBackgroundColor: LinearGradient(colors: [AppColor.grey, AppColor.primaryColor]),
                  isEnable: true,
                  slideActionButtonType: SlideActionButtonType.slideActionWithLoaderButton,
                  onSlideActionCompleted: () async {
                    context.read<HomeCubit>().circleSlideToActionController.loading();
                    await Future.delayed(const Duration(seconds: 3), () {
                      context.read<HomeCubit>().endTravel();
                    });
                    context.read<HomeCubit>().circleSlideToActionController.reset(3);
                    print("Sliding action completed");
                  },
                  onSlideActionCanceled: () {
                    print("Sliding action cancelled");
                  },
                ),
              )
            else
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    flex: 2,
                    child: ValueListenableBuilder<String>(
                      valueListenable: context.read<HomeCubit>().remainingAmount,
                      builder: (context, value, child) => AppButton.text(
                        text: status == TravelStatus.completed ? '${local.remainingamount} $value' : _titleButtom(status, local),
                        color: status == TravelStatus.completed ? AppColor.black : Colors.green,
                        onPressed: () => _switchFunctionByStatus(context, status, value),
                      ),
                    ),
                  ),
                  if (status == TravelStatus.arrived)
                    Expanded(
                      flex: 2,
                      child: AppButton.text(text: _titleButtomTow(status, local), color: AppColor.red, onPressed: () => _switchFunctionByStatusButtonTow(context, status)),
                    ),
                ],
              ),
          ],
        ],
      ),
    );
  }

  String _titleButtom(TravelStatus travelStatus, AppLocalizations local) {
    switch (travelStatus) {
      case TravelStatus.pending:
        return local.accept_request; // 'قبول الطلب'
      case TravelStatus.assigned:
        return local.go_to_client; // 'الذهاب للعميل'
      case TravelStatus.arrived:
        return local.start_trip; // 'بدء الرحلة'
      case TravelStatus.completed:
        return local.remainingamount; // 'انهاء الرحلة'
      default:
        return '';
    }
  }

  String _titleButtomTow(TravelStatus travelStatus, AppLocalizations local) {
    if (travelStatus == TravelStatus.pending) {
      return local.reject_request;
    } else {
      return local.cancel_request;
    }
  }

  _switchFunctionByStatus(BuildContext context, TravelStatus travelStatus, String? remainingAmountPrice) {
    switch (travelStatus) {
      case TravelStatus.pending:
        return context.read<HomeCubit>().approveTravel(travilRequist.id ?? 0);
      case TravelStatus.assigned:
        return context.read<HomeCubit>().launchMap(travilRequist.pickupLat, travilRequist.pickupLng);
      case TravelStatus.arrived:
        return context.read<HomeCubit>().startTravel(travilRequist.id ?? 0, travilRequist.arriveLat ?? '', travilRequist.arriveLng ?? '');
      case TravelStatus.started:
        return context.read<HomeCubit>().endTravel();
      case TravelStatus.completed:
        return _payAmmount(context, remainingAmountPrice, () => context.read<HomeCubit>().payRemaningTravel(remainingAmountPrice), context.read<HomeCubit>().key, context.read<HomeCubit>().ammount);
      default:
        return '';
    }
  }

  _switchFunctionByStatusButtonTow(BuildContext context, TravelStatus travelStatus) {
    if (travelStatus == TravelStatus.pending) {
      return context.read<HomeCubit>().rejectTravel(travilRequist.id ?? 0);
    } else {
      return context.read<HomeCubit>().cancelTravel(travilRequist.id ?? 0);
    }
  }

  void _payAmmount(BuildContext context, String? remainingAmountPrice, Function()? ontap, Key? key, TextEditingController amount) {
    final local = AppLocalizations.of(context)!;

    showModalBottomSheet(
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) => SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: MediaQuery.of(context).viewInsets.bottom + 10),
          decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: Form(
            key: key,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(child: Text(local.remainingamount, style: AppTextStyle.style16B)),
                20.gap,
                WidgetAuthTextField(
                  controller: amount,
                  hintText: remainingAmountPrice ?? local.enterAmountHint,
                  hentTextStyle: AppTextStyle.style14.copyWith(color: AppColor.grey),
                  textStyle: AppTextStyle.style16.copyWith(color: AppColor.black),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [SizedBox(width: 25, height: 25, child: SvgPicture.asset(Assets.svgSar))],
                  ),
                  validator: (p0) {
                    if (remainingAmountPrice != null && remainingAmountPrice != '') {
                      return null;
                    } else {
                      if (p0?.isEmpty ?? true) {
                        return local.requiredField;
                      }
                      return null;
                    }
                  },
                ),
                20.gap,
                Row(
                  children: [
                    Expanded(
                      child: AppButton.text(text: local.charge, onPressed: ontap),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
