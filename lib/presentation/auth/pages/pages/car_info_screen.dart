import 'package:flutter/material.dart';

import '../../../../l10n/app_localizations.dart';
import '../widgets/forget_hint_text.dart';
import '../widgets/widget_auth_background.dart';
import 'containers/car_info_container.dart';

class CarInfoScreen extends StatelessWidget {
  const CarInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const WidgetAuthBackground(),
            ForgetHintText(title: local.enter_car_info_title, description: local.enter_car_info_description, child: CarInfoContainer()),
          ],
        ),
      ),
    );
  }
}
