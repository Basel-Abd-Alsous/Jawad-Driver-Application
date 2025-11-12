import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/widget_bottom_sheet.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../layout/domain/model/user_model.dart';
import '../controller/home_cubit.dart';
import '../domain/model/travel_requist_model.dart';
import '../widgets/requiest_card/widget_requiest_card.dart';

class ContainerTravelRequiest extends StatelessWidget {
  const ContainerTravelRequiest({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return ValueListenableBuilder(
      valueListenable: sl<Box<Driver>>().listenable(),
      builder: (context, value, child) {
        return BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            Driver driver = value.get(BoxKey.user) ?? Driver();
            switch (driver.workStatus) {
              case true:
                return state.maybeWhen(
                  loadedTravelRequest:
                      (travels) => ValueListenableBuilder(
                        valueListenable: context.read<HomeCubit>().travelStatus,
                        builder:
                            (context, status, child) => WidgetBottomSheet(
                              children: [
                                Text(local.new_request_received, style: AppTextStyle.style20B.copyWith(color: AppColor.black)),
                                10.gap,
                                ValueListenableBuilder<TravelRequest?>(
                                  valueListenable: context.read<HomeCubit>().currentTravel,
                                  builder: (context, value, child) {
                                    if (value != null) {
                                      return WidgetCardRequiest(travilRequist: value, status: status!);
                                    } else {
                                      if (travels.isEmpty) {
                                        return Center(
                                          child: Column(
                                            children: [
                                              40.gap,
                                              SizedBox(height: 60, width: 60, child: SvgPicture.asset(Assets.svgVisit)),
                                              10.gap,
                                              Text(local.no_requests, style: AppTextStyle.style16B.copyWith(color: AppColor.grey)),
                                            ],
                                          ),
                                        );
                                      } else {
                                        return ListView.separated(
                                          itemCount: travels.length,
                                          shrinkWrap: true,
                                          physics: const NeverScrollableScrollPhysics(),
                                          separatorBuilder: (context, index) => 5.gap,
                                          itemBuilder: (context, index) => WidgetCardRequiest(travilRequist: travels[index], status: status!),
                                        );
                                      }
                                    }
                                  },
                                ),
                              ],
                            ),
                      ),
                  orElse: () => SizedBox(),
                );
              default:
                return SizedBox();
            }
          },
        );
      },
    );
  }
}
