// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widget/widget_appbar.dart';
import '../../../injection_container.dart';
import '../../layout/controller/layout_cubit.dart';
import '../controller/wallet_cubit.dart';
import 'containers/container_transactions.dart';
import 'containers/wallet_container.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppbar.widgetAppBar(context, context.read<LayoutCubit>().scaffoldKey),
      body: BlocProvider(
        create: (context) => sl<WalletCubit>()..getAllTransaction(),
        child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, spacing: 10, children: [WalletContainer(), ContainerTransactions()]),
        ),
      ),
    );
  }
}
