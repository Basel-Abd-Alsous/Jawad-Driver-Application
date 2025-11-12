import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/transactions_model.dart';
import '../repoistory/wallet_repoistory.dart';

class WalletUsecase {
  final WalletRepoistory walletRepoistory;

  WalletUsecase({required this.walletRepoistory});

  Future<Either<Failure, Result<String>>> chargerWallet(String balance,String? phone,String type) async => await walletRepoistory.chargerWallet(balance ,phone,type);
  Future<Either<Failure, Result<Unit>>> paymentCallback(String id, String otp) async => await walletRepoistory.paymentCallback(id, otp);
  Future<Either<Failure, Result<TransactionsModel>>> transactionsWallet(int page) async => await walletRepoistory.transactionsWallet(page);
  Future<Either<Failure, Unit>> cashRequest(String amount) async => await walletRepoistory.cashRequest(amount);
}
