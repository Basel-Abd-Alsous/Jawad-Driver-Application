import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../../../../core/context/global.dart';
import '../../../../core/function/pick_image.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../main.dart';
import '../../domain/model/car_model_and_color_model.dart';
import '../../domain/model/document_type_model.dart';
import '../../domain/model/my_document_model.dart';
import '../../domain/model/requiest_models/bank_info_model.dart';
import '../../domain/model/requiest_models/car_info_model.dart';
import '../../domain/model/requiest_models/register_requiest_model.dart';
import '../../domain/model/requiest_models/upload_document_model.dart';
import '../../domain/usecases/forget_usecase.dart';
import '../../domain/usecases/register_usecase.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUsecase registerUsecase;
  final ForgetUsecase forgetUsecase;

  final formKeyStep1 = GlobalKey<FormState>();
  final formKeyStep2 = GlobalKey<FormState>();
  final formKeyStep3 = GlobalKey<FormState>();
  final formKeyStep4 = GlobalKey<FormState>();
  final formKeyStep5 = GlobalKey<FormState>();
  TextEditingController sequenceNumber = TextEditingController();
  TextEditingController idNumber = TextEditingController();
  TextEditingController bartheDate = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController bankName = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController swift = TextEditingController();
  TextEditingController stcpay = TextEditingController();
  TextEditingController iban = TextEditingController();
  TextEditingController code = TextEditingController();
  TextEditingController plateNo = TextEditingController();
  TextEditingController plateCode = TextEditingController();
  ImageSource imageSource = ImageSource.gallery;
  List<ColorModel> types = [];
  ColorModel? selectedType;
  List<ColorModel> colors = [];
  ColorModel? selectedColor;
  ValueNotifier<List<ColorModel>> models = ValueNotifier([]);
  ColorModel? selectedModel;
  ValueNotifier<String> selectedYear = ValueNotifier("");
  int currentYear = DateTime.now().year;
  ValueNotifier<List<String>> yearsList = ValueNotifier([]);

  RegisterCubit({required this.registerUsecase, required this.forgetUsecase}) : super(const RegisterState.initial());

  Future<void> selectDate() async {
    FocusScope.of(GlobalContext.context).requestFocus(FocusNode());
    final DateTime? pickedDate = await showDatePicker(
      context: GlobalContext.context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(primary: Theme.of(context).primaryColor, onPrimary: Colors.white, onSurface: Colors.black),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      final formattedDate = "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
      bartheDate.text = formattedDate;
    }
  }

  // Forget Password => Send OTP
  // Future<void> sendOtp({String? moble}) async {
  //   if (moble != null || formKeyStep5.currentState!.validate()) {
  //     try {
  //       emit(_LoadingSendOTP());
  //       Map<String, dynamic> sendOTPModel = {'phone': formatPhone(mobile.text), 'user_type': 'driver'};
  //       final sendOtpResponse = await forgetUsecase.sendOtp(SendOTPModel.fromJson(sendOTPModel));
  //       sendOtpResponse.fold((left) => emit(_ErrorSendOTP(left.message)), (right) => emit(_LoadedSendOTP()));
  //     } catch (e) {
  //       logger.e('Server Error Send OTP Section : $e');
  //     }
  //   }
  // }

  // Register Function
  Future<void> register() async {
    if (formKeyStep3.currentState!.validate()) {
      try {
        emit(const _LoadingSignUp());
        final oneSignalId = OneSignal.User.pushSubscription.id;
        final loginResponse = await registerUsecase.register(
          RegisterModel.fromJson({
            "id_number": idNumber.text,
            "date_of_birth": bartheDate.text,
            "phone": formatPhone(mobile.text),
            "plate_number": plateNo.text,
            "plate_code": plateCode.text,
            "vehicle_colors_id": selectedColor?.id.toString(),
            "vehicle_type_id": selectedType?.id.toString(),
            "vehicle_models_id": selectedModel?.id.toString(),
            "year": selectedYear.value == '' ? '${DateTime.now().year}' : selectedYear.value.toString(),
            "sequence_number": sequenceNumber.text,
            "plate_type": "1",
            "fcm_token": oneSignalId,
          }),
        );
        loginResponse.fold((left) => emit(_ErrorSignUp(left.message)), (right) => emit(const _LoadedSignUp()));
      } catch (e) {
        logger.e('Server Error Login Section : $e');
      }
    }
  }

  Future<void> verifyOtpRegister(String phone, String otp) async {
    try {
      emit(const _LoadingVerifyOtpSignUp());
      final loginResponse = await registerUsecase.verifyOtpRegister(formatPhone(phone), otp, 'driver');
      loginResponse.fold((left) => emit(_ErrorVerifyOtpSignUp(left.message)), (right) => emit(_LoadedVerifyOtpSignUp(right.data ?? '')));
    } catch (e) {
      logger.e('Server Error Login Section : $e');
    }
  }

  String formatPhone(String phone) {
    phone = phone.replaceAll(' ', '');
    if (phone.startsWith('0')) phone = phone.substring(1);
    return '+966$phone';
  }

  // Get All Documents Type Function
  Future<void> getAllDocumentsType(MyDocumentModel? myDocumentModel) async {
    try {
      emit(const _LoadingDocumentType());
      final getAllDocumentsTypeResponse = await registerUsecase.documentsType();
      getAllDocumentsTypeResponse.fold((left) => emit(_ErrorDocumentType(left.message)), (right) {
        if (myDocumentModel != null) {
          List<Datum> updatedList = right.data!.data!.map((type) {
            for (MyDocument document in myDocumentModel.payload!) {
              if (document.documentTypeId == type.id) {
                return type.copyWith(path: document.filePath);
              }
            }
            return type;
          }).toList();
          final updatedData = right.data!.copyWith(data: updatedList);
          emit(_LoadedDocumentType(updatedData));
        } else {
          emit(_LoadedDocumentType(right.data!));
        }
      });
    } catch (e) {
      logger.e('Server Error Get All Documents Type Section : $e');
    }
  }

  // Upload Document Function
  Future<void> uploadDocument({Datum? document, MyDocument? myDocument}) async {
    try {
      if (myDocument != null) {
        SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      } else {
        SmartDialog.showLoading(msg: '${AppLocalizations.of(GlobalContext.context)!.loading} ${document?.name}...');
      }
      var file = await imagePicker(imageSource);
      if (file != null) {
        final Object? updatedDocument;
        if (myDocument != null) {
          updatedDocument = myDocument.copyWith(filePath: file.path);
        } else {
          updatedDocument = document?.copyWith(path: file.path);
        }
        Map<String, dynamic> documentData = {'document_type_id': myDocument != null ? (updatedDocument as MyDocument).documentTypeId : (updatedDocument as Datum).id, 'document': file};
        final uploadDocumentResponse = await registerUsecase.uploadDocument(UploadDocumentModel.fromJson(documentData));
        uploadDocumentResponse.fold(
          (left) {
            SmartDialog.dismiss();
          },
          (right) {
            final currentState = state;
            if (currentState is _LoadedDocumentType) {
              final List<Datum> updatedDocuments = (currentState.documentTypeModel.data ?? [])
                  .map((doc) {
                    if (doc.id == (updatedDocument as Datum).id) {
                      return updatedDocument;
                    }
                    return doc;
                  })
                  .toList()
                  .cast<Datum>();
              emit(_LoadedDocumentType(DocumentTypeModel(data: updatedDocuments)));
            } else if (currentState is _LoadedMyDocument) {
              final List<MyDocument> updatedDocuments = (currentState.mMyDocumentModel.payload ?? [])
                  .map((doc) {
                    if (doc.documentType == (updatedDocument as MyDocument).documentType) {
                      final updatedDocuments = updatedDocument.copyWith(statusEdit: 'pending');
                      return updatedDocuments;
                    }
                    return doc;
                  })
                  .toList()
                  .cast<MyDocument>();
              emit(_LoadedMyDocument(MyDocumentModel(payload: updatedDocuments)));
            }

            SmartDialog.dismiss();
          },
        );
      } else {
        SmartDialog.dismiss();
      }
    } catch (e) {
      SmartDialog.dismiss();

      logger.e('Server Error Upload Document Section : $e');
    }
  }

  // My Documents Function
  Future<void> myDocuments({bool? isLogin}) async {
    try {
      emit(const _LoadingMyDocument());
      final myDocumentsResponse = await registerUsecase.myDocument();
      myDocumentsResponse.fold((left) => emit(_ErrorMyDocument(left.message)), (right) async {
        if (right.data?.payload != null) {
          emit(_LoadedMyDocument(right.data!));
          if (isLogin == true) {
          } else {
            await getAllDocumentsType(right.data!);
          }
        } else {
          getAllDocumentsType(null);
        }
      });
    } catch (e) {
      logger.e('Server Error My Documents Section : $e');
    }
  }

  // Get Car Model And Color Model Function
  Future<void> getCarModelAndColor() async {
    try {
      emit(const _LoadingCarModelAndColorInfo());
      final carModelAndColorResponse = await registerUsecase.carModelAndColor();
      carModelAndColorResponse.fold((left) => emit(_ErrorCarModelAndColorInfo(left.message)), (right) {
        types = right.data!.payload!.types!.toList();
        colors = right.data!.payload!.colors!.toList();
        yearsList.value = List.generate(11, (index) => (currentYear - index).toString());
        emit(_LoadedCarModelAndColorInfo(right.data!));
      });
    } catch (e) {
      logger.e('Server Error Get Car Model And Color Section : $e');
    }
  }

  // Upload Car Inf Function
  Future<void> uploadCarInfo() async {
    if (formKeyStep3.currentState!.validate()) {
      try {
        emit(const _LoadingCarInfo());
        final carInfoData = {
          'plate_number': plateNo.text,
          'plate_code': plateCode.text,
          'type': selectedType?.id,
          'model': selectedModel?.id,
          'color': selectedColor?.id,
          "year": selectedYear.value == '' ? '${DateTime.now().year}' : selectedYear.value,
        };
        final uploadCarInfoResponse = await registerUsecase.carInfo(CarInfoModel.fromJson(carInfoData));
        uploadCarInfoResponse.fold((left) => emit(_ErrorCarInfo(left.message)), (right) => emit(const _LoadedCarInfo()));
      } catch (e) {
        logger.e('Server Error Upload Car Info Section : $e');
      }
    }
  }

  // Upload Bank Info Function
  Future<void> uploadBankInfo() async {
    if (formKeyStep4.currentState!.validate()) {
      try {
        emit(const _LoadingBankInfo());
        final bankInfoData = {
          'bank_name': bankName.text.isEmpty ? 'empty bank' : bankName.text,
          'number': '000000000000000',
          'iban': iban.text.isEmpty ? 'empty bank' : iban.text,
          'stc_phone': stcpay.text,
          'type': stcpay.text.isEmpty ? 'bank' : 'stc',
          'swift_code': swift.text,
          'code': code.text,
        };
        final uploadBankInfoResponse = await registerUsecase.bankInfo(BankInfoModel.fromJson(bankInfoData));
        uploadBankInfoResponse.fold((left) => emit(_ErrorBankInfo(left.message)), (right) {
          emit(const _LoadedBankInfo());
        });
      } catch (e) {
        logger.e('Server Error Upload Bank Info Section : $e');
      }
    }
  }

  // Select Type
  void selectType(ColorModel? type) {
    if (type == null) return;
    selectedType = type;
    selectedModel = null;
    models.value = [];
    models.value = List.from(models.value)..addAll(type.models ?? []);
    emit(const _SelectType());
  }

  // Select Model
  void selectModel(ColorModel? model) {
    selectedModel = model;
    emit(const _SelectModel());
  }

  // Select Year
  void selectYear(String? year) {
    selectedYear.value = year ?? "";
  }

  // Select Color
  void selectColor(ColorModel? color) {
    selectedColor = color;
    emit(const _SelectColor());
  }
}
