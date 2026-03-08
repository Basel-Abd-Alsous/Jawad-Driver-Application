import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extension/space_extension.dart';
import '../../../core/widget/loading/loading_documents.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/widget_cach_network_image.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../auth/controller/register/register_cubit.dart';
import '../../auth/domain/model/my_document_model.dart';
import '../../auth/pages/widgets/widget_auth_text_field.dart';

class MyDocumentScreen extends StatelessWidget {
  const MyDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (_) => sl<RegisterCubit>()..myDocuments(),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return state.maybeWhen(
            loadingMyDocument: () => const LoadingDocuments(),
            loadedMyDocument: (documents) {
              final cubit = context.read<RegisterCubit>();

              return Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Form(
                    key: cubit.formKeyStep2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(local.my_documents, style: AppTextStyle.style14B.copyWith(color: Colors.black)),

                        20.gap,

                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: documents.payload?.documentTypes?.length ?? 0,
                          itemBuilder: (context, index) {
                            final documentType = documents.payload?.documentTypes?[index];
                            final myDoc = documents.payload?.myDocuments?.firstWhere((e) => e.documentTypeId == documentType?.id, orElse: () => const MyDocument());
                            final path = myDoc?.filePath;
                            final status = myDoc?.statusEdit?.toLowerCase();
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: WidgetAuthTextField(
                                controller: TextEditingController(text: documentType?.name ?? ''),
                                hintText: '${local.selec} ${documentType?.name ?? ''}',
                                textStyle: AppTextStyle.style14,
                                hentTextStyle: AppTextStyle.style14.copyWith(color: Colors.grey),
                                readOnly: true,
                                suffixIcon: path != null
                                    ? Icon(
                                        status?.toLowerCase() == 'pending'
                                            ? Icons.timelapse_sharp
                                            : status?.toLowerCase() == 'approved'
                                            ? Icons.check_box
                                            : Icons.cloud_upload_rounded,
                                        color: status?.toLowerCase() == 'pending'
                                            ? AppColor.grey
                                            : status?.toLowerCase() == 'approved'
                                            ? AppColor.green
                                            : AppColor.red,
                                        size: 30,
                                      )
                                    : const Icon(Icons.cloud_upload_rounded, color: AppColor.black, size: 30),
                                prefixIcon: path != null ? _buildPreview(path) : const Icon(Icons.perm_contact_calendar_sharp, color: AppColor.black, size: 30),
                                validator: documentType?.isRequired == true
                                    ? (value) {
                                        if (path == null || path.isEmpty) {
                                          return local.requiredField;
                                        }
                                        return null;
                                      }
                                    : null,

                                onTap: path != null
                                    ? null
                                    : () {
                                        context.read<RegisterCubit>().uploadDocument(document: documentType);
                                      },
                              ),
                            );
                          },
                        ),

                        20.gap,
                      ],
                    ),
                  ),
                ),
              );
            },

            errorMyDocument: (error) => Center(
              child: Text(error, style: AppTextStyle.style14B.copyWith(color: Colors.red)),
            ),

            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }

  /// -----------------------------
  /// Image Preview Widget
  /// -----------------------------
  Widget _buildPreview(String path) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 40,
          height: 40,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: path.contains('http') ? WidgetCachNetworkImage(image: path) : Image.file(File(path), fit: BoxFit.cover),
        ),
      ],
    );
  }
}
