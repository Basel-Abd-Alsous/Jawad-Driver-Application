import 'package:flutter/material.dart';

import '../../../presentation/notifications/widget/notification_card.dart';
import '../../extension/space_extension.dart';

class LoadingNotifications extends StatelessWidget {
  const LoadingNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(9.0),
      itemCount: 5,
      separatorBuilder: (context, index) => 10.gap,
      itemBuilder: (context, index) => const NotificationItem(loading: true),
    );
  }
}
