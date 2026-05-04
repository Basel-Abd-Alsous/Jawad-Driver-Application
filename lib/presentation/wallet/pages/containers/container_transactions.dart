import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/extension/space_extension.dart';
import '../../../../core/router/router_key.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widget/empty_screen.dart';
import '../../../../core/widget/loading/loading_transactions.dart';
import '../../../../l10n/app_localizations.dart';
import '../../controller/wallet_cubit.dart';
import '../../widget/transaction_card.dart';

class ContainerTransactions extends StatelessWidget {
  const ContainerTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .center,
            children: [
              Text(local.transactionsHistory, style: AppTextStyle.style14B.copyWith(color: Colors.black)),
              InkWell(
                onTap: () => context.push(AppRoutes.drawalHistory),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(color: AppColor.secondColor, borderRadius: BorderRadius.circular(5)),
                  child: Text(local.drawalHistory, style: AppTextStyle.style12.copyWith(color: Colors.white)),
                ),
              ),
            ],
          ),
          Expanded(
            child: BlocBuilder<WalletCubit, WalletState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loadingTransactionWallet: () => const LoadingTransactions(),
                  loadedTransactionWallet: (data, hasMore) {
                    final isEmpty = data.payload?.transactions?.isEmpty ?? true;
                    if (isEmpty) {
                      return Empty(title: local.emptyTransactions, desc: local.noTransactionsYet, imageName: Assets.svgWallet);
                    } else {
                      return Column(
                        children: [
                          Expanded(
                            child: ListView.separated(
                              controller: context.read<WalletCubit>().scrollController,
                              itemCount: data.payload!.transactions!.length,
                              separatorBuilder: (context, index) => 10.gap,
                              itemBuilder: (context, index) => TransactionItem(data: data.payload!.transactions![index]),
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
                  errorTransactionWallet: (message) => Text(message),
                  orElse: () => const SizedBox(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
