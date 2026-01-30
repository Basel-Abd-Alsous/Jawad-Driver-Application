import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/cubits/localization_cubit/localization.cubit.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../core/router/router_key.dart';
import '../../../core/utils/color.dart';
import '../../../core/widget/widget_dailog.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../layout/controller/layout_cubit.dart';
import '../controller/drawer_cubit.dart';
import '../widgets/widget_drawer_header.dart';
import '../widgets/widget_drawer_list.dart';

class WidgetDrawer extends StatelessWidget {
  const WidgetDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Drawer(
      width: 0.32.sh,
      backgroundColor: AppColor.white,
      child: SafeArea(
        child: Column(
          children: [
            const WidgetDrawerHeader(),
            const Divider(),
            WidgetDrawerList(
              title: local.editProfile,
              icon: Icon(Icons.person_2_outlined, size: 24, color: AppColor.secondColor),
              onTap: () {
                context.pop();
                context.push(AppRoutes.profile);
              },
            ),
            WidgetDrawerList(
              title: local.previous_trips,
              icon: SvgPicture.asset(Assets.svgVisitMenu, width: 24, color: AppColor.secondColor),
              onTap: () {
                context.pop();
                context.read<LayoutCubit>().changeScreen(1);
              },
            ),
            WidgetDrawerList(
              title: local.earnings,
              icon: SvgPicture.asset(Assets.svgPayment, width: 24, color: AppColor.secondColor),
              onTap: () {
                context.pop();
                context.read<LayoutCubit>().changeScreen(2);
              },
            ),
            WidgetDrawerList(
              title: local.notifications,
              icon: SvgPicture.asset(Assets.svgNotifictaionMenu, width: 24, color: AppColor.secondColor),
              onTap: () {
                context.pop();
                context.push(AppRoutes.notification);
              },
            ),
            WidgetDrawerList(
              title: local.feedback,
              icon: SvgPicture.asset(Assets.svgContact, width: 24, color: AppColor.secondColor),
              onTap: () => context.push(AppRoutes.complaint),
            ),
            WidgetDrawerList(
              title: local.contactUs,
              icon: SvgPicture.asset(Assets.svgContactUs, width: 24, color: AppColor.secondColor),
              onTap: () => context.push(AppRoutes.contactUs),
            ),
            BlocProvider(
              create: (context) => sl<DrawerCubit>(),
              child: BlocBuilder<DrawerCubit, DrawerState>(
                builder: (context, state) {
                  return WidgetDrawerList(
                    title: local.sharing,
                    icon: SvgPicture.asset(Assets.svgShare, width: 24, color: AppColor.secondColor),
                    onTap: () => context.read<DrawerCubit>().shareJawadDriverApp(),
                  );
                },
              ),
            ),

            WidgetDrawerList(
              title: local.termsConditions,
              icon: SvgPicture.asset(Assets.svgPrivacy, width: 24, color: AppColor.secondColor),
              onTap: () => context.push('${AppRoutes.content}?isTerms=false'),
            ),
            WidgetDrawerList(
              title: local.termsConditions,
              icon: SvgPicture.asset(Assets.svgTerms, width: 24, color: AppColor.secondColor),
              onTap: () => context.push('${AppRoutes.content}?isTerms=true'),
            ),

            const Spacer(),
            WidgetDrawerList(
              title: local.language,
              icon: SvgPicture.asset(Assets.svgLanguageMenu, width: 24, color: AppColor.secondColor),
              onTap: () {
                final lang = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.language);
                if (lang == 'ar') {
                  context.read<LanguageCubit>().changeLanguage('en');
                } else {
                  context.read<LanguageCubit>().changeLanguage('ar');
                }
              },
            ),
            WidgetDrawerList(
              title: local.logout,
              icon: SvgPicture.asset(Assets.svgLogout, width: 24, color: AppColor.secondColor),
              fontColor: AppColor.red,
              onTap: () {
                sl<Box>(instanceName: BoxKey.appBox).clear();
                context.go(AppRoutes.login);
                context.pop();
              },
            ),
            WidgetDrawerList(
              title: local.deleteYourAccount,
              icon: const Icon(Icons.delete, color: AppColor.red),
              onTap: () {
                SmartDialog.show(
                  builder: (_) => WidgetDilog(
                    isError: true,
                    title: local.warning,
                    message: local.areyousureyouwanttodeleteyouraccount,
                    cancelText: local.back,
                    confirmText: local.deleteYourAccount,
                    onCancel: () {
                      SmartDialog.dismiss();
                    },
                    onConfirm: () {
                      SmartDialog.dismiss();
                      context.go(AppRoutes.login);
                    },
                  ),
                );
              },
            ),
            WidgetDrawerList(
              title: local.primetag_copyright,
              icon: SvgPicture.asset(Assets.svgCoprRight, width: 24, color: AppColor.secondColor),
            ),
          ],
        ),
      ),
    );
  }
}
