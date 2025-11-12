part of 'wallet_cubit.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = _Initial;

  // Transactions State
  const factory WalletState.loadingTransactionWallet() = _LoadingTransactionWallet;
  const factory WalletState.loadedTransactionWallet( {required TransactionsModel data , @Default(false) bool? hasMore}) = _LoadedTransactionWallet;
  const factory WalletState.errorTransactionWallet(String message) = _ErrorTransactionWallet;
}
