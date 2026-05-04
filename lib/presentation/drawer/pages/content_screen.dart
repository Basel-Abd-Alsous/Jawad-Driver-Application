import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/text_style.dart';
import '../../../core/widget/widget_appbar.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/drawer_cubit.dart';

class ContentScreen extends StatelessWidget {
  final bool? isTerms;
  const ContentScreen({super.key, this.isTerms = false});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => isTerms == true ? (sl<DrawerCubit>()..getTerms()) : sl<DrawerCubit>()
        ..getPrivacy(),
      child: Scaffold(
        appBar: WidgetAppbar.widgetAppBarWithTitle(context, isTerms == true ? local.termsConditions : local.privacyPolicy),
        body: BlocBuilder<DrawerCubit, DrawerState>(
          builder: (context, state) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ValueListenableBuilder<String>(
                    valueListenable: context.read<DrawerCubit>().content,
                    builder: (context, data, _) => Text(data, style: AppTextStyle.style14),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
