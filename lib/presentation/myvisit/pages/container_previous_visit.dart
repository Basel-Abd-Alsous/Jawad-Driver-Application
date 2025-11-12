import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/empty_screen.dart';
import '../../../core/widget/loading/loading_visits.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/visit/visit_cubit.dart';
import '../widget/last_visit_card.dart';

class ContainerPreviousVisit extends StatelessWidget {
  const ContainerPreviousVisit({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider.value(
      value: sl<VisitCubit>()..getAllCompletedVisit(),
      child: BlocBuilder<VisitCubit, VisitState>(
        builder: (context, state) {
          return state.maybeWhen(
            loadingPreviousVisit: () => LoadingVisits(),
            loadedPreviousVisit: (data, hasMore) {
              final isEmpty = data.payload?.travels?.isEmpty ?? true;
              if (isEmpty) {
                return Empty(title: local.previous_trips, desc: local.previous_trips, imageName: Assets.svgNotifictaion);
              } else {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        controller: context.read<VisitCubit>().scrollController,
                        padding: const EdgeInsets.all(9.0),
                        itemCount: data.payload!.travels!.length,
                        separatorBuilder: (context, index) => 10.gap,
                        itemBuilder: (context, index) => LastVisitCard(travel: data.payload!.travels![index]),
                      ),
                    ),
                    if (hasMore == true)
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(width: 20, height: 20, child: CircularProgressIndicator.adaptive()),
                            const SizedBox(width: 10),
                            Text(local.loading, style: AppTextStyle.style12B),
                          ],
                        ),
                      ),
                  ],
                );
              }
            },
            errorPreviousVisit: (message) => Text(message),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
// ListView.separated(
//       padding: const EdgeInsets.all(10),
//       itemCount: 7,
//       separatorBuilder: (context, index) => 10.gap,
//       itemBuilder: (context, index) => const LastVisitCard(),
//     );