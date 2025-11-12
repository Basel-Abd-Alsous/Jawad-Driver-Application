import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/utils/text_style.dart';
import '../../../l10n/app_localizations.dart';
import '../../home/pages/home_screen.dart';
import '../../myvisit/pages/my_visit_screen.dart';
import '../../wallet/pages/wallet_screen.dart';
import '../../my_documents/pages/my_document_screen.dart';

part 'layout_state.dart';
part 'layout_cubit.freezed.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutState.initial());

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<Widget> screens = [HomeScreen(), MyVisitScreen(), WalletScreen(), MyDocumentScreen()];
  ValueNotifier<int> currentIndex = ValueNotifier(0);

  // Change Index Page
  void changeScreen(int index) => currentIndex.value = index;
  List<SalomonBottomBarItem> getItems(BuildContext context) {
    return [
      SalomonBottomBarItem(
        icon: SizedBox(width: 22, height: 22, child: SvgPicture.asset(Assets.svgHome)),
        title: Text(AppLocalizations.of(context)!.home, style: AppTextStyle.style12B),
      ),
      SalomonBottomBarItem(
        icon: SizedBox(width: 22, height: 22, child: SvgPicture.asset(Assets.svgVisit)),
        title: Text(AppLocalizations.of(context)!.trip, style: AppTextStyle.style12B),
      ),
      SalomonBottomBarItem(
        icon: SizedBox(width: 22, height: 22, child: SvgPicture.asset(Assets.svgWallet)),
        title: Text(AppLocalizations.of(context)!.myWallet, style: AppTextStyle.style12B),
      ),
      SalomonBottomBarItem(
        icon: SizedBox(width: 22, height: 22, child: SvgPicture.asset(Assets.svgMyFiles)),
        title: Text(AppLocalizations.of(context)!.my_documents, style: AppTextStyle.style12B),
      ),
    ];
  }
}
