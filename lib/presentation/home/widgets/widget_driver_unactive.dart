import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/home_cubit.dart';

class WidgetDriverUnactive extends StatelessWidget {
  const WidgetDriverUnactive({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 150, height: 150, child: Lottie.asset(Assets.lottieDriverUnActive, repeat: true)),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 26.0), child: Text(local.activate_status_message, textAlign: TextAlign.center, style: AppTextStyle.style14B)),
          10.gap,
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return AppButton.text(text: local.activate_status_button, color: AppColor.secondColor, borderRadius: 10000, onPressed: () => context.read<HomeCubit>().switchWorkStatus(context));
            },
          ),
        ],
      ),
    );
  }
}
