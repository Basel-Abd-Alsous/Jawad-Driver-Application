import 'package:flutter/material.dart';

import '../../../presentation/myvisit/widget/last_visit_card.dart';
import '../../extension/space_extension.dart';

class LoadingVisits extends StatelessWidget {
  const LoadingVisits({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(9.0),
      itemCount: 5,
      separatorBuilder: (context, index) => 10.gap,
      itemBuilder: (context, index) => const LastVisitCard(loading: true),
    );
  }
}
