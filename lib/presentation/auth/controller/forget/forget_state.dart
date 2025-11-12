part of 'forget_cubit.dart';

@freezed
class ForgetState with _$ForgetState {
  const factory ForgetState.initial() = _Initial;

  // Send OTP State
  const factory ForgetState.loadingForget() = _LoadingForget;
  const factory ForgetState.loadedForget() = _LoadedForget;
  const factory ForgetState.errorForget(String message) = _ErrorForget;

  // Verify OTP State
  const factory ForgetState.loadingVerifyForget() = _LoadingVerifyForget;
  const factory ForgetState.loadedVerifyForget() = _LoadedVerifyForget;
  const factory ForgetState.errorVerifyForget(String message) = _ErrorVerifyForget;

  // New Passord State
  const factory ForgetState.loadingNewPassword() = _LoadingNewPassword;
  const factory ForgetState.loadedNewPassword() = _LoadedNewPassword;
  const factory ForgetState.errorNewPassword(String message) = _ErrorNewPassword;
}
