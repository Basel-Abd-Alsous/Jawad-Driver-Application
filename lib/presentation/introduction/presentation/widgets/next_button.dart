import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widget/button/app_button.dart';
import '../../../../l10n/app_localizations.dart';
import '../../controller/introductions_bloc.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<IntroductionsBloc, IntroductionsState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 0.15.sw),
            width: double.infinity,
            child: AppButton.text(
              color: AppColor.white,
              textStyle: AppTextStyle.style18B,
              onPressed: () => context.read<IntroductionsBloc>().add(IntroductionsEvent.nextPageEvent()),
              text: local.next,
            ),
          );
        },
      ),
    );
  }
}
