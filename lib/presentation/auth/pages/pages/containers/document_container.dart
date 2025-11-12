import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
 
import '../../../../../core/router/router_key.dart';
import '../../../../../core/extension/space_extension.dart';
import '../../../../../core/mixin/validate.mixin.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widget/button/app_button.dart';
import '../../../../../core/widget/widget_cach_network_image.dart';
import '../../../../../injection_container.dart';
import '../../../../../core/widget/widget_dailog.dart';
import '../../../controller/login/login_cubit.dart';
import '../../../controller/register/register_cubit.dart';
import '../../../domain/model/document_type_model.dart';
import '../../widgets/widget_auth_text_field.dart';
import '../../../../../l10n/app_localizations.dart';

class DocumentContainer extends StatelessWidget with FormValidationMixin {
  DocumentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.23), borderRadius: BorderRadius.circular(16)),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return state.maybeWhen(
            loadingMyDocument: () => const Center(child: CircularProgressIndicator()),
            loadedMyDocument: (_) => const Center(child: CircularProgressIndicator()),
            loadingDocumentType: () => const Center(child: CircularProgressIndicator()),
            loadedDocumentType: (documents) {
              return Column(
                children: [
                  Form(
                    key: context.read<RegisterCubit>().formKeyStep2,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: documents.data!.length,
                      itemBuilder: (context, index) {
                        Datum document = documents.data![index];
                        return WidgetAuthTextField(
                          controller: TextEditingController(text: document.path),
                          hintText: '${local.selec}${document.name}',
                          suffixIcon: Icon(Icons.cloud_upload_rounded, color: AppColor.white, size: 30),
                          prefixIcon: document.path != null
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                      child: document.path!.contains('http')
                                          ? WidgetCachNetworkImage(image: document.path ?? '')
                                          : Image.file(File(document.path ?? ''), fit: BoxFit.cover),
                                    ),
                                  ],
                                )
                              : Icon(Icons.perm_contact_calendar_sharp, color: AppColor.white, size: 30),
                          readOnly: true,
                          validator: document.isRequired == false ? (p0) => null : (p0) => validateNull(context,p0),
                          onTap: () {
                            context.read<RegisterCubit>().uploadDocument(document: document);
                          },
                        );
                      },
                    ),
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
                        child: BlocProvider(
                          create: (context) => sl<LoginCubit>(),
                          child: BlocConsumer<LoginCubit, LoginState>(
                            listener: _listener,
                            builder: (context, state) {
                              return AppButton.text(
                                loading: state.maybeWhen(orElse: () => false, loadingDocumentStatus: () => true),
                                text: local.continues,
                                onPressed: () {
                                  if (context.read<RegisterCubit>().formKeyStep2.currentState!.validate()) {
                                    context.read<LoginCubit>().documentStatus();
                                  }
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            errorDocumentType: (error) => Center(child: Text(error)),
            errorMyDocument: (error) => Center(child: Text(error)),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }

  void _listener(BuildContext context, LoginState state) {
    final local = AppLocalizations.of(context)!;

    state.maybeWhen(
      loadedDocumentStatus: (value) {
        SmartDialog.show(
          builder: (_) => WidgetDilog(
            title: local.successfully,
            message: local.proceed_next_step,
            cancelText: local.continues,
            onCancel: () {
              SmartDialog.dismiss();
              context.push(AppRoutes.bankInfo);
            },
          ),
        );
      },
      errorDocumentStatus: (message) => SmartDialog.show(
        builder: (_) => WidgetDilog(
          isError: true,
          title: local.warning,
          message: message,
          cancelText: local.back,
          onCancel: () => SmartDialog.dismiss(),
        ),
      ),
      orElse: () {},
    );
  }
}
