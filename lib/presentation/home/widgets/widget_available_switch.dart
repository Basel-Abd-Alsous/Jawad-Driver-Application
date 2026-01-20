import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/services/hive/box_key.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../layout/domain/model/user_model.dart';
import '../controller/home_cubit.dart';
import '../domain/status_travel_enum.dart';

class WidgetAvailableSwitch extends StatelessWidget {
  const WidgetAvailableSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return ValueListenableBuilder(
      valueListenable: context.read<HomeCubit>().travelStatus,
      builder: (context, value, child) => value != TravelStatus.pending
          ? const SizedBox.shrink()
          : ValueListenableBuilder<Box<Driver>>(
              valueListenable: sl<Box<Driver>>().listenable(),
              builder: (context, value, child) {
                Driver driver = value.get(BoxKey.user) ?? const Driver();
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(color: driver.workStatus == true ? Colors.green : AppColor.secondColor, borderRadius: BorderRadius.circular(1000)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 50,
                            height: 25,
                            child: Switch.adaptive(
                              padding: EdgeInsets.zero,
                              value: driver.workStatus ?? false,
                              activeColor: Colors.greenAccent,

                              inactiveThumbColor: AppColor.white,
                              onChanged: (value) => context.read<HomeCubit>().switchWorkStatus(context),
                            ),
                          ),
                          10.gap,
                          Text(driver.workStatus == true ? local.available : local.not_available, style: AppTextStyle.style10B.copyWith(color: AppColor.white)),
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
