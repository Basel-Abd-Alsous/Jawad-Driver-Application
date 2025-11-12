import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../controller/register/register_cubit.dart';
import '../widgets/forget_hint_text.dart';
import '../../../../l10n/app_localizations.dart';
import '../widgets/widget_auth_background.dart';
import 'containers/document_container.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const WidgetAuthBackground(),
            ForgetHintText(
              title: local.upload_documents_title,
              description: local.upload_documents_description,
              child: BlocProvider(create: (context) => sl<RegisterCubit>()..myDocuments(), child: DocumentContainer()),
            ),
          ],
        ),
      ),
    );
  }
}
