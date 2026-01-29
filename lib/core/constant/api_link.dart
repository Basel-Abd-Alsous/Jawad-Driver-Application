// import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiLinks {
  ApiLinks._();

  static final String googleMap = dotenv.env['GOOGLE_MAP']!;
  static final String server = dotenv.env['SERVER']!;
  static final String socitUrl = dotenv.env['SOCIT_URL']!;
  static final String oneSignalId = dotenv.env['ONE_SIGNAL_ID']!;
  //============================== Auth =========================================//
  static String login = dotenv.env['LOGIN']!;
  static String terms = dotenv.env['TERMS']!;
  static String contact = dotenv.env['CONTACT']!;
  static String feedback = dotenv.env['FEEDBACK']!;
  static String feedbackCategory = dotenv.env['FEEDBACK_CATEGORY']!;
  static String privacy = dotenv.env['PRIVACY']!;
  static String register = dotenv.env['REGISTER']!;
  static String registerStatus = dotenv.env['REGISTER_STATUS']!;
  static String documentsType = dotenv.env['DOCUMENTS_TYPE']!;
  static String myDocuments = dotenv.env['MY_DOCUMENT']!;
  static String uploadDocument = dotenv.env['UPLOAD_DOCUMENTS']!;
  static String documentStatus = dotenv.env['DOCUMENT_STATUS']!;
  static String vehicles = dotenv.env['VEHICLES']!;
  static String carInfo = dotenv.env['CAR_INFO']!;
  static String bankInfo = dotenv.env['BANK_INFO']!;
  static String verifyOtpRegister = dotenv.env['VERIFY_OTP_REGISTER']!;
  static String verifyOtpLogin = dotenv.env['VERIFY_OTP_LOGIN']!;
  static String authResend = dotenv.env['AUTH_RESEND']!;
  static String registerSendOtp = dotenv.env['REGISTER_SEND_OTP']!;
  //============================== Forget Password =========================================//
  static String sendOtp = dotenv.env['SEND_OTP']!;
  static String verifyOtp = dotenv.env['VERIFY_OTP']!;
  static String newPassword = dotenv.env['NEW_PASSWORD']!;
  //============================== Work Status =========================================//
  static String workStatus = dotenv.env['WORK_STATUS']!;
  //============================== Profile =========================================//
  static String profile = dotenv.env['PROFILE']!;
  static String updateProfile = dotenv.env['UPDATE_PROFILE']!;
  static String privacyPolicy = dotenv.env['PRIVACY_POLICY']!;
  //============================== Home =========================================//
  static String broadcasting = dotenv.env['BROADCASTING']!;
  static String updateDriverLocation = dotenv.env['UPDATE_DRIVER_LOCATION']!;
  static String notification = dotenv.env['NOTIFICATION']!;
  //============================== Travel =========================================//
  static String travelRequest = dotenv.env['TRAVEL_REQUEST']!;
  static String approveTravel = dotenv.env['APPROVE_TRAVEL_REQUEST']!;
  static String rejectTravel = dotenv.env['REJECT_TRAVEL_REQUIST']!;
  static String cancelTravel = dotenv.env['CANCEL_TRAVEL_REQUIST']!;
  static String currentTravel = dotenv.env['CURRENT_TRAVEL']!;
  static String arrivedTravel = dotenv.env['ARRIVED_TRAVEL']!;
  static String startTravel = dotenv.env['START_TRAVEL']!;
  static String endTravel = dotenv.env['END_TRAVEL']!;
  static String payTravel = dotenv.env['PAY_TRAVEL']!;
  static String rateTravel = dotenv.env['RATE_TRAVEL']!;
  static String completedTravels = dotenv.env['COMPLETED_TRAVEL']!;
  static String canceledTravels = dotenv.env['CANCELED_TRAVEL']!;
  static String travelDetails = dotenv.env['TRAVEL_DETAIL']!;
  static String travelTrack = dotenv.env['TRAVEL_TRACK']!;
  //============================== Wallet =========================================//
  static String chargerWallet = dotenv.env['CHARGER_WALLET']!;
  static String paymentCallback = dotenv.env['PAYMENT_CALLBACK']!;
  static String transactionWallet = dotenv.env['TRANSACTION_WALLET']!;
  static String cashRequest = dotenv.env['CASH_REQUIEST']!;
  //============================== Chat =========================================//
  static String chat = dotenv.env['GET_CHAT']!;
  static String sendMessage = dotenv.env['SEND_CHAT']!;
  static String boarding = dotenv.env['BORDING']!;
}
