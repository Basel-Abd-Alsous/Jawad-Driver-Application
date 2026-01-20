import 'package:flutter/material.dart';

import '../../../presentation/myvisit/pages/container_app_bar_details.dart';
import '../../../presentation/myvisit/pages/container_visit_details.dart';

class LoadingVisitDetails extends StatelessWidget {
  const LoadingVisitDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(physics: const NeverScrollableScrollPhysics(), children: const <Widget>[ContainerMapVisitDetails(isLoading: true), ContainerVisitDetails(isLoading: true)]);
  }
}
