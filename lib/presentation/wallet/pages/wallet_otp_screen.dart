import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/mixin/validate.mixin.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/wallet_cubit.dart';

class WalletOtpDialog extends StatelessWidget with FormValidationMixin {
  final String phoneNumber;
  final String id;

  WalletOtpDialog({super.key, required this.phoneNumber, required this.id});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      child: BlocProvider(
        create: (context) => sl<WalletCubit>(),
        child: BlocBuilder<WalletCubit, WalletState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(Assets.svgWallet, width: 80, height: 80),
                  16.gap,
                  Text(
                    '${local.we_send_to} $phoneNumber',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.style14B.copyWith(color: AppColor.black, height: 1.3),
                  ),
                  20.gap,
                  Pinput(
                    autofocus: true,
                    showCursor: true,
                    length: 4,
                    controller: context.read<WalletCubit>().otp,
                    hapticFeedbackType: HapticFeedbackType.mediumImpact,
                    validator: (value) => validateNull(context, value),
                  ),
                  24.gap,
                  SizedBox(width: double.infinity, child: AppButton.text(text: local.verify, onPressed: () => context.read<WalletCubit>().paymentCallback(id))),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
