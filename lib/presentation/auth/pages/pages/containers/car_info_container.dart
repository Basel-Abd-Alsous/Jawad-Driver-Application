import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../../../../core/router/router_key.dart';
import '../../../../../core/extension/space_extension.dart';
import '../../../../../core/mixin/validate.mixin.dart';
import '../../../../../core/utils/border_radius.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widget/button/app_button.dart';
import '../../../../../core/widget/loading/widget_loading.dart';
import '../../../../../core/widget/widget_dailog.dart';
import '../../../controller/register/register_cubit.dart';
import '../../../domain/model/car_model_and_color_model.dart';
import '../../widgets/widget_auth_text_field.dart';
import '../../widgets/widget_drop_down_field.dart';
import '../../../../../l10n/app_localizations.dart';

class CarInfoContainer extends StatelessWidget with FormValidationMixin {
  CarInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: _listener,
      builder: (context, state) {
        bool isLoadingCarModelAndColor = state.maybeWhen(orElse: () => false, loadingCarModelAndColorInfo: () => true);
        return Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: AppColor.onSecondColor.withValues(alpha: 0.23), borderRadius: BorderRadius.circular(AppBorderRadius.lg16)),
          child: Form(
            key: context.read<RegisterCubit>().formKeyStep3,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sequence Number', style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                WidgetAuthTextField(hintText: 'Sequence Number', controller: context.read<RegisterCubit>().sequenceNumber, validator: (value) => validateNull(context, value)),

                5.gap,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(local.plate_number, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                          WidgetAuthTextField(
                            hintText: '${local.enter_plate_number} ( 1234 )',
                            controller: context.read<RegisterCubit>().plateNo,
                            maxLength: 4,
                            validator: (value) => validateNull(context, value),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(local.plate_code, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                          WidgetAuthTextField(
                            hintText: local.enter_plate_code,
                            maxLength: 4,
                            controller: context.read<RegisterCubit>().plateCode,
                            keyboardType: TextInputType.text,
                            validator: (value) => validateNull(context, value),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                5.gap,
                Text(local.type, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                isLoadingCarModelAndColor
                    ? const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: WidgetLoading(width: double.infinity, radius: 2),
                      )
                    : WidgetAuthDropdownField<ColorModel>(
                        hintText: local.select_type,
                        validator: (value) {
                          if (value == null) {
                            return local.please_select_type;
                          }
                          return null;
                        },
                        value: context.read<RegisterCubit>().selectedType,
                        onChanged: context.read<RegisterCubit>().selectType,
                        items: context
                            .read<RegisterCubit>()
                            .types
                            .where((item) => item.models?.isNotEmpty ?? false)
                            .toList()
                            .map(
                              (type) => DropdownMenuItem<ColorModel>(
                                value: type,
                                child: Text(type.name ?? '', style: AppTextStyle.style14B),
                              ),
                            )
                            .toList(),
                      ),
                5.gap,
                Text(local.model, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                isLoadingCarModelAndColor
                    ? const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: WidgetLoading(width: double.infinity, radius: 2),
                      )
                    : ValueListenableBuilder<List<ColorModel>>(
                        valueListenable: context.read<RegisterCubit>().models,
                        builder: (context, value, child) => WidgetAuthDropdownField<ColorModel>(
                          hintText: local.select_model,
                          value: context.read<RegisterCubit>().selectedModel,
                          validator: (value) {
                            if (value == null) {
                              return local.please_select_model;
                            }
                            return null;
                          },
                          onChanged: context.read<RegisterCubit>().selectModel,
                          items: value
                              .map(
                                (type) => DropdownMenuItem<ColorModel>(
                                  value: type,
                                  child: Text(type.name ?? '', style: AppTextStyle.style14B),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                5.gap,
                Text('Year', style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                isLoadingCarModelAndColor
                    ? const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: WidgetLoading(width: double.infinity, radius: 2),
                      )
                    : ValueListenableBuilder<List<String>>(
                        valueListenable: context.read<RegisterCubit>().yearsList,
                        builder: (context, years, child) => WidgetAuthDropdownField<String>(
                          hintText: local.select_model,
                          value: years.first,
                          validator: (value) {
                            if (value == null) {
                              return 'Must Be Select Year';
                            }
                            return null;
                          },
                          onChanged: context.read<RegisterCubit>().selectYear,
                          items: years
                              .map(
                                (type) => DropdownMenuItem<String>(
                                  value: type,
                                  child: Text(type, style: AppTextStyle.style14B),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                5.gap,
                Text(local.color, style: AppTextStyle.style14B.copyWith(color: AppColor.white, height: 1.2)),
                isLoadingCarModelAndColor
                    ? const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: WidgetLoading(width: double.infinity, radius: 2),
                      )
                    : WidgetAuthDropdownField<ColorModel>(
                        hintText: local.select_color,
                        value: context.read<RegisterCubit>().selectedColor,
                        onChanged: context.read<RegisterCubit>().selectColor,
                        validator: (value) {
                          if (value == null) {
                            return local.please_select_color;
                          }
                          return null;
                        },
                        items: context
                            .read<RegisterCubit>()
                            .colors
                            .map(
                              (type) => DropdownMenuItem<ColorModel>(
                                value: type,
                                child: Text(type.name ?? '', style: AppTextStyle.style14B),
                              ),
                            )
                            .toList(),
                      ),

                20.gap,
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: AppButton.text(
                        color: AppColor.white,
                        textStyle: AppTextStyle.style12B.copyWith(color: AppColor.primaryColor),
                        text: local.back,
                        onPressed: () => context.go(AppRoutes.login),
                      ),
                    ),
                    10.gap,
                    Expanded(
                      flex: 3,
                      child: AppButton.text(
                        loading: state.maybeWhen(orElse: () => false, loadingVerifyOtpSignUp: () => true),
                        text: local.continues,
                        onPressed: () => context.read<RegisterCubit>().sendOtp(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _listener(BuildContext context, RegisterState state) {
    final local = AppLocalizations.of(context)!;
    state.maybeWhen(
      loadedSignUp: (model) async {
        context.push('${AppRoutes.verify}?phoneNumber=${context.read<RegisterCubit>().formatPhone(context.read<RegisterCubit>().mobile.text)}&isRegister=true', extra: model);
      },
      errorSignUp: (message) => SmartDialog.show(
        builder: (_) => WidgetDilog(isError: true, title: local.warning, message: message, cancelText: local.back, onCancel: () => SmartDialog.dismiss()),
      ),
      orElse: () => null,
    );
  }
}
