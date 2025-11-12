import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/visit/visit_cubit.dart';
import 'container_cancel_visits.dart';
import 'container_previous_visit.dart';

class MyVisitScreen extends StatelessWidget {
  const MyVisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => sl<VisitCubit>(),
      child: DefaultTabController(
        length: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              labelStyle: AppTextStyle.style14B.copyWith(color: AppColor.grey),
              unselectedLabelStyle: AppTextStyle.style12,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 2,
              tabs: [Tab(text: local.previous_trips), Tab(text: local.canceledTrips)],
            ),
            Expanded(child: TabBarView(children: [ContainerPreviousVisit(), ContainerCancelVisits()])),
          ],
        ),
      ),
    );
  }
}
