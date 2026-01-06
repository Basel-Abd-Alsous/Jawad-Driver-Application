import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extension/space_extension.dart';
import '../../../core/utils/color.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widget/widget_appbar.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/drawer_cubit.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<DrawerCubit>(),
      child: Scaffold(
        appBar: WidgetAppbar.widgetAppBarWithTitle(context, AppLocalizations.of(context)!.contactUs),
        body: BlocBuilder<DrawerCubit, DrawerState>(
          builder: (context, state) {
            final cubit = context.read<DrawerCubit>();
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppLocalizations.of(context)!.contact_description, style: const TextStyle(fontSize: 16)),
                  20.gap,
                  ListTile(
                    dense: true,
                    leading: const Icon(Icons.phone, color: Colors.green),
                    title: Text(AppLocalizations.of(context)!.call_us, style: AppTextStyle.style12.copyWith(color: AppColor.grey)),
                    subtitle: Text(cubit.phoneNumber, style: AppTextStyle.style12),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: AppColor.grey),
                    onTap: cubit.callPhone,
                  ),
                  const Divider(),
                  ListTile(
                    dense: true,
                    leading: const Icon(Icons.email, color: Colors.red),
                    title: Text(AppLocalizations.of(context)!.email_us, style: AppTextStyle.style12.copyWith(color: AppColor.grey)),
                    subtitle: Text(cubit.email, style: AppTextStyle.style12),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: AppColor.grey),
                    onTap: cubit.sendEmail,
                  ),
                  const Divider(),
                  ListTile(
                    dense: true,
                    leading: const Icon(Icons.message, color: Colors.teal),
                    title: Text(AppLocalizations.of(context)!.whatsapp_us, style: AppTextStyle.style12.copyWith(color: AppColor.grey)),
                    subtitle: Text(cubit.whatsappNumber, style: AppTextStyle.style12),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: AppColor.grey),
                    onTap: cubit.openWhatsApp,
                  ),
                  const Divider(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
