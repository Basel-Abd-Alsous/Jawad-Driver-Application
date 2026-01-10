import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/button/app_button.dart';
import '../../../core/widget/loading/widget_loading.dart';
import '../../../injection_container.dart';
import '../../auth/pages/widgets/widget_auth_text_field.dart';
import '../controller/wallet_cubit.dart';
import '../../../l10n/app_localizations.dart';

class WalletContainer extends StatelessWidget {
  const WalletContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(local.myWallet, style: AppTextStyle.style14B.copyWith(color: Colors.black)),
        10.gap,
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: AppColor.grey.withOpacity(0.2))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<WalletCubit, WalletState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loadingTransactionWallet: () => WidgetLoading(width: 50),
                    loadedTransactionWallet: (data, _) =>
                        Row(spacing: 4, children: [SvgPicture.asset(Assets.svgSar, width: 30, height: 30), Text(data.payload?.walletAmount ?? '0.0', style: AppTextStyle.style30B)]),
                    orElse: () => SizedBox.shrink(),
                  );
                },
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 5,
                  children: [
                    BlocBuilder<WalletCubit, WalletState>(
                      builder: (context, state) {
                        return AppButton.text(text: local.withdrawCash, color: AppColor.black, height: 20, borderRadius: 10, onPressed: () => _chargerWallet(context, isRequest: true));
                      },
                    ),
                    AppButton.icon(
                      text: local.chargeWallet,
                      height: 20,
                      color: AppColor.secondColor,
                      leadingIconAssetName: SvgPicture.asset(Assets.svgSendWallet, color: AppColor.white),
                      borderRadius: 10,
                      onPressed: () => _selectPaymentMethods(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _selectPaymentMethods(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    String language = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language, defaultValue: 'ar') as String;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(local.paymentMethod, style: AppTextStyle.style16B),
              20.gap,
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: AppColor.grey.withOpacity(0.2))),
                title: Text(local.visa, style: AppTextStyle.style14B),
                leading: SvgPicture.asset(Assets.svgVisa, width: 35, height: 35),
                trailing: Icon(language == 'ar' ? Icons.arrow_forward : Icons.arrow_back),
                onTap: () {
                  Navigator.of(context).pop();
                  _chargerWallet(context);
                },
              ),
              10.gap,
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: AppColor.grey.withOpacity(0.2))),
                title: Text(local.mobile, style: AppTextStyle.style14B),
                trailing: Icon(language == 'ar' ? Icons.arrow_forward : Icons.arrow_back),
                leading: Icon(Icons.phone, color: AppColor.black),
                onTap: () {
                  Navigator.of(context).pop();
                  _chargerWallet(context, mobile: true);
                },
              ),
              10.gap,
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(local.back, style: AppTextStyle.style14B.copyWith(color: AppColor.grey)),
              ),
            ],
          ),
        );
      },
    );
  }

  void _chargerWallet(BuildContext context, {bool? isRequest, bool? mobile = false}) {
    final local = AppLocalizations.of(context)!;
    final mobileRegEx = RegExp(r'^05[0-9]{8}$');

    showModalBottomSheet(
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) => BlocProvider(
        create: (context) => sl<WalletCubit>(),
        child: BlocBuilder<WalletCubit, WalletState>(
          builder: (context, state) {
            return SafeArea(
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: MediaQuery.of(context).viewInsets.bottom + 10),
                decoration: const BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                child: Form(
                  key: context.read<WalletCubit>().formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(child: Text(isRequest == true ? local.withdrawCash : local.chargeWallet, style: AppTextStyle.style16B)),
                      20.gap,
                      if (mobile == true) ...[
                        ValueListenableBuilder<TextEditingController>(
                          valueListenable: context.read<WalletCubit>().mobile,
                          builder: (context, value, child) => WidgetAuthTextField(
                            hintText: local.mobile_hint,
                            controller: value,
                            textStyle: AppTextStyle.style14.copyWith(color: AppColor.black),
                            keyboardType: TextInputType.phone,
                            prefixIcon: Icon(Icons.phone, color: AppColor.grey),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!.emptyMobileHint;
                              }
                              if (!mobileRegEx.hasMatch(value)) {
                                return AppLocalizations.of(context)!.notValidMobileHint;
                              }
                              return null;
                            },
                          ),
                        ),
                        10.gap,
                      ],
                      WidgetAuthTextField(
                        controller: context.read<WalletCubit>().ammopuntController,
                        hintText: local.enterAmountHint,
                        hentTextStyle: AppTextStyle.style14.copyWith(color: AppColor.grey),
                        textStyle: AppTextStyle.style16.copyWith(color: AppColor.black),
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [SizedBox(width: 25, height: 25, child: SvgPicture.asset(Assets.svgSar))],
                        ),
                        validator: (p0) {
                          if (p0?.isEmpty ?? true) {
                            return local.requiredField;
                          }
                          return null;
                        },
                      ),
                      20.gap,
                      Row(
                        children: [
                          Expanded(
                            child: AppButton.text(
                              text: isRequest == true ? local.send : local.charge,
                              onPressed: () {
                                if (isRequest == true) {
                                  context.read<WalletCubit>().cashRequest();
                                } else {
                                  if (mobile == false) {
                                    context.read<WalletCubit>().chargerWalletBank();
                                  } else {
                                    context.read<WalletCubit>().chargerWalletMobile();
                                  }
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
