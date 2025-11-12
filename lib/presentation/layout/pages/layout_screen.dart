import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../core/context/global.dart';
import '../../../core/router/router_key.dart';
import '../../../injection_container.dart';
import '../../drawer/pages/widget_drawer.dart';
import '../../../core/widget/widget_appbar.dart';
import '../controller/layout_cubit.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        GlobalContext.context.go(AppRoutes.layout);
        return false;
      },
      child: BlocProvider(
        create: (context) => sl<LayoutCubit>() ,
        child: BlocBuilder<LayoutCubit, LayoutState>(
          builder: (context, state) {
            return ValueListenableBuilder(
              valueListenable: context.read<LayoutCubit>().currentIndex,
              builder:
                  (context, value, child) => Scaffold(
                    key: context.read<LayoutCubit>().scaffoldKey,
                    appBar: value == 0 ? null : WidgetAppbar.widgetAppBar(context, context.read<LayoutCubit>().scaffoldKey),
                    drawer: WidgetDrawer(),
                    body: SafeArea(child: context.read<LayoutCubit>().screens[value]),
                    bottomNavigationBar: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SalomonBottomBar(
                            currentIndex: value,
                            curve: Curves.linear,
                            duration: const Duration(milliseconds: 400),
                            onTap: (value) => context.read<LayoutCubit>().changeScreen(value),
                            items: context.read<LayoutCubit>().getItems(context),
                          ),
                        ],
                      ),
                    ),
                  ),
            );
          },
        ),
      ),
    );
  }
}
