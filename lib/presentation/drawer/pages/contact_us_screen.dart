import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constant/app_image.dart';
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
      create: (context) => sl<DrawerCubit>()..getContact(),
      child: Scaffold(
        appBar: WidgetAppbar.widgetAppBarWithTitle(context, AppLocalizations.of(context)!.contactUs),
        body: BlocBuilder<DrawerCubit, DrawerState>(
          builder: (context, state) {
            final cubit = context.read<DrawerCubit>();
            return ValueListenableBuilder(
              valueListenable: cubit.contactUs,
              builder: (context, data, child) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    20.gap,
                    SvgPicture.asset(Assets.svgSupport, width: 80, height: 80, color: AppColor.secondColor),
                    Text(data?.contact.companyName ?? "", style: AppTextStyle.style16B),
                    Text(data?.contact.companyDescription ?? "", textAlign: TextAlign.center, style: AppTextStyle.style14),
                    ListTile(
                      dense: true,
                      leading: Icon(Icons.phone, color: AppColor.secondColor),
                      title: Text(AppLocalizations.of(context)!.call_us, style: AppTextStyle.style12.copyWith(color: AppColor.black)),
                      subtitle: Text(data?.contact.supportMobile ?? "", style: AppTextStyle.style12),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: AppColor.secondColor),
                      onTap: () => cubit.callPhone(data?.contact.supportMobile ?? " "),
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(Icons.email, color: AppColor.secondColor),
                      title: Text(AppLocalizations.of(context)!.email_us, style: AppTextStyle.style12.copyWith(color: AppColor.black)),
                      subtitle: Text(data?.contact.email ?? "", style: AppTextStyle.style12),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: AppColor.secondColor),
                      onTap: () => cubit.sendEmail(data?.contact.email ?? " "),
                    ),
                    ListTile(
                      dense: true,
                      leading: SvgPicture.asset(Assets.svgWhatsapp, width: 30, height: 30, color: AppColor.secondColor),
                      title: Text(AppLocalizations.of(context)!.whatsapp, style: AppTextStyle.style12.copyWith(color: AppColor.black)),
                      subtitle: Text(AppLocalizations.of(context)!.contact_via_whatsapp, style: AppTextStyle.style12),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: AppColor.secondColor),
                      onTap: () => cubit.openUrl(data?.contact.whatsappLink ?? ""),
                    ),

                    ListTile(
                      dense: true,
                      leading: SvgPicture.asset(Assets.svgInstgram, width: 30, height: 30, color: AppColor.secondColor),
                      title: Text(AppLocalizations.of(context)!.instagram, style: AppTextStyle.style12.copyWith(color: AppColor.black)),
                      subtitle: Text(AppLocalizations.of(context)!.follow_on_instagram, style: AppTextStyle.style12),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: AppColor.secondColor),
                      onTap: () => cubit.openUrl(data?.contact.instagramLink ?? ""),
                    ),

                    ListTile(
                      dense: true,
                      leading: SvgPicture.asset(Assets.svgTwitter, width: 30, height: 30, color: AppColor.secondColor),
                      title: Text(AppLocalizations.of(context)!.twitter, style: AppTextStyle.style12.copyWith(color: AppColor.black)),
                      subtitle: Text(AppLocalizations.of(context)!.follow_on_twitter, style: AppTextStyle.style12),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: AppColor.secondColor),
                      onTap: () => cubit.openUrl(data?.contact.twitterLink ?? ""),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
