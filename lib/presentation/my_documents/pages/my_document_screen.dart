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
      create: (context) => sl<RegisterCubit>()..myDocuments(isLogin: true),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return state.maybeWhen(
            loadingMyDocument: () => const LoadingDocuments(),
            loadedMyDocument: (documents) => Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(local.my_documents, style: AppTextStyle.style14B.copyWith(color: Colors.black)),
                  10.gap,
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: documents.payload!.length,
                    separatorBuilder: (context, index) => 10.gap,
                    itemBuilder: (context, index) {
                      MyDocument document = documents.payload![index];
                      return WidgetAuthTextField(
                        controller: TextEditingController(text: document.documentType ?? ''),
                        hintText: '${local.select_document} ${document.filePath}',
                        textStyle: AppTextStyle.style14,
                        suffixIcon: Icon(
                          document.statusEdit?.toLowerCase() == 'pending'
                              ? Icons.timelapse_sharp
                              : document.statusEdit?.toLowerCase() == 'approved'
                                  ? Icons.check_box
                                  : Icons.cloud_upload_rounded,
                          color: document.statusEdit?.toLowerCase() == 'pending'
                              ? AppColor.grey
                              : document.statusEdit?.toLowerCase() == 'approved'
                                  ? AppColor.green
                                  : AppColor.red,
                          size: 30,
                        ),
                        prefixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                              child: document.filePath?.contains('http') == false
                                  ? Image.file(File(document.filePath ?? ''), fit: BoxFit.cover)
                                  : WidgetCachNetworkImage(image: document.filePath ?? '', boxFit: BoxFit.cover),
                            ),
                          ],
                        ),
                        readOnly: true,
                        onTap: () => document.statusEdit?.toLowerCase() == 'pending' || document.statusEdit?.toLowerCase() == 'approved'
                            ? null
                            : context.read<RegisterCubit>().uploadDocument(myDocument: document),
                      );
                    },
                  ),
                ],
              ),
            ),
            errorMyDocument: (error) => Center(
              child: Text(error, style: AppTextStyle.style14B.copyWith(color: Colors.red)),
            ),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
