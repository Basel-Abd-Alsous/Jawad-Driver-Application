part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;

  // Register State
  const factory RegisterState.loadingSignUp() = _LoadingSignUp;
  const factory RegisterState.loadedSignUp(RegisterModel model) = _LoadedSignUp;
  const factory RegisterState.errorSignUp(String message) = _ErrorSignUp;

  const factory RegisterState.loadingVerifyOtpSignUp() = _LoadingVerifyOtpSignUp;
  const factory RegisterState.loadedVerifyOtpSignUp(String token) = _LoadedVerifyOtpSignUp;
  const factory RegisterState.errorVerifyOtpSignUp(String message) = _ErrorVerifyOtpSignUp;
  // Document type State
  const factory RegisterState.loadingDocumentType() = _LoadingDocumentType;
  const factory RegisterState.loadedDocumentType(DocumentTypeModel documentTypeModel) = _LoadedDocumentType;
  const factory RegisterState.errorDocumentType(String message) = _ErrorDocumentType;

  // File Upload State
  const factory RegisterState.loadingFile() = _LoadingFile;
  const factory RegisterState.loadedFile() = _LoadedFile;
  const factory RegisterState.errorFile(String message) = _ErrorFile;

  // My Document State
  const factory RegisterState.loadingMyDocument() = _LoadingMyDocument;
  const factory RegisterState.loadedMyDocument(MyDocumentModel mMyDocumentModel) = _LoadedMyDocument;
  const factory RegisterState.errorMyDocument(String message) = _ErrorMyDocument;

  // Car Model And Color State
  const factory RegisterState.loadingCarModelAndColorInfo() = _LoadingCarModelAndColorInfo;
  const factory RegisterState.loadedCarModelAndColorInfo(CarModelAndColorModel carModelAndColorModel) = _LoadedCarModelAndColorInfo;
  const factory RegisterState.errorCarModelAndColorInfo(String message) = _ErrorCarModelAndColorInfo;

  // Car Info State
  const factory RegisterState.loadingCarInfo() = _LoadingCarInfo;
  const factory RegisterState.loadedCarInfo() = _LoadedCarInfo;
  const factory RegisterState.errorCarInfo(String message) = _ErrorCarInfo;

  // Bank Info State
  const factory RegisterState.loadingBankInfo() = _LoadingBankInfo;
  const factory RegisterState.loadedBankInfo() = _LoadedBankInfo;
  const factory RegisterState.errorBankInfo(String message) = _ErrorBankInfo;

  // Select Type & Color & Model State
  const factory RegisterState.selectType() = _SelectType;
  const factory RegisterState.selectModel() = _SelectModel;
  const factory RegisterState.selectColor() = _SelectColor;
}
