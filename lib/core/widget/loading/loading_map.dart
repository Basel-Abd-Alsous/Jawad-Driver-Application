import 'package:flutter/material.dart';

import 'widget_loading.dart';

class LoadingMap extends StatelessWidget {
  const LoadingMap({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetLoading(
      width: MediaQuery.of(context).size.width * 0.98,
      height: MediaQuery.of(context).size.height * 0.98,
      color: Colors.grey.shade200,
    );
  }
}
