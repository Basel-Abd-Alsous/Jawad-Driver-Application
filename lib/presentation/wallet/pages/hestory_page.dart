import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extension/space_extension.dart';
import '../../../core/widget/widget_appbar.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../controller/wallet_cubit.dart';
import '../widget/widget_drawal_card.dart';

class HestoryPage extends StatelessWidget {
  const HestoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => sl<WalletCubit>()..withDrawalRequest(),
      child: Scaffold(
        appBar: WidgetAppbar.widgetAppBarWithTitle(context, local.drawalHistory),
        body: BlocBuilder<WalletCubit, WalletState>(
          builder: (context, state) {
            return ValueListenableBuilder(
              valueListenable: context.read<WalletCubit>().loadingDrawal,
              builder: (context, loadingDrawal, _) => loadingDrawal == true
                  ? const Center(child: CircularProgressIndicator())
                  : ValueListenableBuilder(
                      valueListenable: context.read<WalletCubit>().drawalItems,
                      builder: (context, drawalItems, _) => ListView.separated(
                        padding: const EdgeInsets.all(10),
                        separatorBuilder: (context, index) => 10.gap,
                        itemCount: drawalItems.length,
                        itemBuilder: (context, index) => WidgetDrawalCard(payload: drawalItems[index]),
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
