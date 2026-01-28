part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  // Login State
  const factory LoginState.loadingLogin() = _LoadingLogin;
  const factory LoginState.loadedLogin() = _LoadedLogin;
  const factory LoginState.errorLogin(String message) = _ErrorLogin;

  const factory LoginState.loadingVerifyLogin() = _LoadingVerifyLogin;
  const factory LoginState.loadedVerifyLogin(Map<String, dynamic> data) = _LoadedVerifyLogin;
  const factory LoginState.errorVerifyLogin(String message) = _ErrorVerifyLogin;

  // Register Status State
  const factory LoginState.loadingRegisterStatus() = _LoadingRegisterStatus;
  const factory LoginState.loadedRegisterStatus(RegisterStatusModel registerStatusModel) = _LoadedRegisterStatus;
  const factory LoginState.errorRegisterStatus(String message) = _ErrorRegisterStatus;

  // Document Status State
  const factory LoginState.loadingDocumentStatus() = _LoadingDocumentStatus;
  const factory LoginState.loadedDocumentStatus(DocumentStatusModel documentStatusModel) = _LoadedDocumentStatus;
  const factory LoginState.errorDocumentStatus(String message) = _ErrorDocumentStatus;
}
