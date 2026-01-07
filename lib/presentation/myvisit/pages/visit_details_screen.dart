import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widget/loading/loading_visit_details.dart';
import '../../../core/widget/widget_appbar.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/visit_details/visit_details_cubit.dart';
import 'container_app_bar_details.dart';
import 'container_visit_details.dart';

class VisitDetailsScreen extends StatelessWidget {
  final String? visitId;
  const VisitDetailsScreen({super.key, this.visitId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<VisitDetailsCubit>()..getVisitDetails(int.tryParse(visitId ?? '0') ?? 0),
      child: Scaffold(
        appBar: WidgetAppbar.widgetAppBarWithTitle(context, AppLocalizations.of(context)!.visitDetails),
        body: BlocBuilder<VisitDetailsCubit, VisitDetailsState>(
          builder: (context, state) {
            return state.maybeWhen(
              loadingVisitDetails: () => LoadingVisitDetails(),
              loadedVisitDetails:
                  (date) => ListView(padding: EdgeInsets.all(10), physics: NeverScrollableScrollPhysics(), children: <Widget>[ContainerMapVisitDetails(data: date), ContainerVisitDetails(date: date)]),
              errorVisitDetails: (message) => Center(child: Text(message)),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
