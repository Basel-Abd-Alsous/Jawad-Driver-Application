import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
import '../../../core/constant/app_image.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/empty_screen.dart';
import '../../../core/widget/loading/loading_notifications.dart';
import '../../../core/widget/widget_appbar.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/notifications_cubit.dart';
import '../widget/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: WidgetAppbar.widgetAppBarWithTitle(context, local.notifications),
      body: BlocProvider(
        create: (context) => sl<NotificationCubit>()..getAllNotification(),
        child: BlocBuilder<NotificationCubit, NotificationState>(
          builder: (context, state) {
            return state.maybeWhen(
              loadingNotifications: () => const LoadingNotifications(),
              loadedNotifications: (data, hasMore) {
                final isEmpty = data.payload?.notifications?.isEmpty ?? true;
                if (isEmpty) {
                  return Empty(title: local.emptyNotifications, desc:local.emptyNotifications, imageName: Assets.svgNotifictaion);
                } else {
                  return Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          controller: context.read<NotificationCubit>().scrollController,
                          padding: const EdgeInsets.all(9.0),
                          itemCount: data.payload!.notifications!.length,
                          separatorBuilder: (context, index) => 10.gap,
                          itemBuilder: (context, index) => NotificationItem(notification: data.payload!.notifications![index]),
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
              errorNotifications: (message) => Text(message),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
