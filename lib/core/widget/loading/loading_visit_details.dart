import 'package:flutter/material.dart';

import '../../../presentation/myvisit/pages/container_app_bar_details.dart';
import '../../../presentation/myvisit/pages/container_visit_details.dart';

class LoadingVisitDetails extends StatelessWidget {
  const LoadingVisitDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      slivers: <Widget>[ContainerAbbBarDetails(isLoading: true), ContainerVisitDetails(isLoading: true)],
    );
  }
}
