part of 'drawer_cubit.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState.initial() = _Initial;

  const factory DrawerState.loadingBankInfo() = _LoadingBankInfo;
  const factory DrawerState.loadedBankInfo() = _LoadedBankInfo;
  const factory DrawerState.errorBankInfo(String message) = _ErrorBankInfo;
}
