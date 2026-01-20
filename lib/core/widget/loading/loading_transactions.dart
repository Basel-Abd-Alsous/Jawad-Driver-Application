import 'package:flutter/material.dart';

import '../../../presentation/wallet/widget/transaction_card.dart';
import '../../extension/space_extension.dart';

class LoadingTransactions extends StatelessWidget {
  const LoadingTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemCount: 4, separatorBuilder: (context, index) => 10.gap, itemBuilder: (context, index) => const TransactionItem(loading: true));
  }
}
