import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @bank_name.
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get bank_name;

  /// No description provided for @enter_bank_name.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Bank Name'**
  String get enter_bank_name;

  /// No description provided for @number.
  ///
  /// In en, this message translates to:
  /// **'Number'**
  String get number;

  /// No description provided for @enter_number.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Number'**
  String get enter_number;

  /// No description provided for @iban.
  ///
  /// In en, this message translates to:
  /// **'IBAN'**
  String get iban;

  /// No description provided for @enter_iban.
  ///
  /// In en, this message translates to:
  /// **'Enter Your IBAN'**
  String get enter_iban;

  /// No description provided for @swift_code.
  ///
  /// In en, this message translates to:
  /// **'Swift Code'**
  String get swift_code;

  /// No description provided for @enter_swift_code.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Swift Code'**
  String get enter_swift_code;

  /// No description provided for @code.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get code;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get or;

  /// No description provided for @enter_code.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Code'**
  String get enter_code;

  /// No description provided for @remainingamount.
  ///
  /// In en, this message translates to:
  /// **'Remaining amount'**
  String get remainingamount;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @visa.
  ///
  /// In en, this message translates to:
  /// **'Visa'**
  String get visa;

  /// No description provided for @destinationnotspecified.
  ///
  /// In en, this message translates to:
  /// **'Destination not specified'**
  String get destinationnotspecified;

  /// No description provided for @riderdebtpaid.
  ///
  /// In en, this message translates to:
  /// **'Rider Debt Paid'**
  String get riderdebtpaid;

  /// No description provided for @chargeclientwallet.
  ///
  /// In en, this message translates to:
  /// **'Charge Client Wallet'**
  String get chargeclientwallet;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @sharing.
  ///
  /// In en, this message translates to:
  /// **'Sharing'**
  String get sharing;

  /// No description provided for @termsConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsConditions;

  /// No description provided for @deleteYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Your Account'**
  String get deleteYourAccount;

  /// No description provided for @selectBirthDate.
  ///
  /// In en, this message translates to:
  /// **'Select your birth date'**
  String get selectBirthDate;

  /// No description provided for @birth.
  ///
  /// In en, this message translates to:
  /// **'Birth date'**
  String get birth;

  /// No description provided for @enterIdNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Your ID Number'**
  String get enterIdNumber;

  /// No description provided for @create_new_account.
  ///
  /// In en, this message translates to:
  /// **'Create a new account'**
  String get create_new_account;

  /// No description provided for @created_account.
  ///
  /// In en, this message translates to:
  /// **'Created Account'**
  String get created_account;

  /// No description provided for @account_created_success.
  ///
  /// In en, this message translates to:
  /// **'Your account has been successfully created and is now pending approval.'**
  String get account_created_success;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @cashRequsetSuccess.
  ///
  /// In en, this message translates to:
  /// **'Cash request submitted successfully'**
  String get cashRequsetSuccess;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @withdrawCash.
  ///
  /// In en, this message translates to:
  /// **'Withdraw Cash'**
  String get withdrawCash;

  /// No description provided for @commission.
  ///
  /// In en, this message translates to:
  /// **'Commission'**
  String get commission;

  /// No description provided for @driver_profit.
  ///
  /// In en, this message translates to:
  /// **'Driver Profit'**
  String get driver_profit;

  /// No description provided for @feedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedback;

  /// No description provided for @feedbackType.
  ///
  /// In en, this message translates to:
  /// **'Feedback Type'**
  String get feedbackType;

  /// No description provided for @pleaseSelectFeedbackType.
  ///
  /// In en, this message translates to:
  /// **'Please select a feedback type'**
  String get pleaseSelectFeedbackType;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @addRating.
  ///
  /// In en, this message translates to:
  /// **'Add Rating'**
  String get addRating;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @update_profile_error.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong in update profile'**
  String get update_profile_error;

  /// No description provided for @update_profile_success.
  ///
  /// In en, this message translates to:
  /// **'Update profile successfully'**
  String get update_profile_success;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @areyousureyouwanttodeleteyouraccount.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account?'**
  String get areyousureyouwanttodeleteyouraccount;

  /// No description provided for @whatsapp.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp;

  /// No description provided for @instagram.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram;

  /// No description provided for @contact_via_whatsapp.
  ///
  /// In en, this message translates to:
  /// **'Contact us via WhatsApp'**
  String get contact_via_whatsapp;

  /// No description provided for @follow_on_instagram.
  ///
  /// In en, this message translates to:
  /// **'Follow us on Instagram'**
  String get follow_on_instagram;

  /// No description provided for @follow_on_twitter.
  ///
  /// In en, this message translates to:
  /// **'Follow us on Twitter'**
  String get follow_on_twitter;

  /// No description provided for @twitter.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter;

  /// No description provided for @plate_number.
  ///
  /// In en, this message translates to:
  /// **'Plate Number'**
  String get plate_number;

  /// No description provided for @enter_plate_number.
  ///
  /// In en, this message translates to:
  /// **'Enter Plate Number'**
  String get enter_plate_number;

  /// No description provided for @plate_code.
  ///
  /// In en, this message translates to:
  /// **'Plate Code'**
  String get plate_code;

  /// No description provided for @enter_plate_code.
  ///
  /// In en, this message translates to:
  /// **'Enter Plate Code'**
  String get enter_plate_code;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @select_type.
  ///
  /// In en, this message translates to:
  /// **'Select a type'**
  String get select_type;

  /// No description provided for @please_select_type.
  ///
  /// In en, this message translates to:
  /// **'Please select a type'**
  String get please_select_type;

  /// No description provided for @model.
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get model;

  /// No description provided for @select_model.
  ///
  /// In en, this message translates to:
  /// **'Select a model'**
  String get select_model;

  /// No description provided for @please_select_model.
  ///
  /// In en, this message translates to:
  /// **'Please select a model'**
  String get please_select_model;

  /// No description provided for @color.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get color;

  /// No description provided for @select_color.
  ///
  /// In en, this message translates to:
  /// **'Select a color'**
  String get select_color;

  /// No description provided for @please_select_color.
  ///
  /// In en, this message translates to:
  /// **'Please select a color'**
  String get please_select_color;

  /// No description provided for @continues.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continues;

  /// No description provided for @successfully.
  ///
  /// In en, this message translates to:
  /// **'Successfully'**
  String get successfully;

  /// No description provided for @proceed_next_step.
  ///
  /// In en, this message translates to:
  /// **'Proceed to the next step to upload your documents.'**
  String get proceed_next_step;

  /// No description provided for @back_button.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back_button;

  /// No description provided for @new_password.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get new_password;

  /// No description provided for @enter_new_password.
  ///
  /// In en, this message translates to:
  /// **'Enter New Password'**
  String get enter_new_password;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password;

  /// No description provided for @enter_confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Enter Confirm Password'**
  String get enter_confirm_password;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @password_changed.
  ///
  /// In en, this message translates to:
  /// **'Password Changed'**
  String get password_changed;

  /// No description provided for @password_updated_success.
  ///
  /// In en, this message translates to:
  /// **'Your password has been successfully updated.'**
  String get password_updated_success;

  /// No description provided for @selec.
  ///
  /// In en, this message translates to:
  /// **'Select '**
  String get selec;

  /// No description provided for @mobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get mobile;

  /// No description provided for @mobile_hint.
  ///
  /// In en, this message translates to:
  /// **'XXXXXXXXX'**
  String get mobile_hint;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @check_phone.
  ///
  /// In en, this message translates to:
  /// **'Check your phone for the verification code we just sent.'**
  String get check_phone;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @password_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Password'**
  String get password_hint;

  /// No description provided for @dont_have_account.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dont_have_account;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get full_name;

  /// No description provided for @full_name_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Fullname'**
  String get full_name_hint;

  /// No description provided for @confirm_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter Confirm Password'**
  String get confirm_password_hint;

  /// No description provided for @create_account_terms.
  ///
  /// In en, this message translates to:
  /// **'By clicking on Create an account, you agree to the terms of use and privacy policy'**
  String get create_account_terms;

  /// No description provided for @already_have_account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get already_have_account;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @registration_completed.
  ///
  /// In en, this message translates to:
  /// **'Registration Completed'**
  String get registration_completed;

  /// No description provided for @we_send_to.
  ///
  /// In en, this message translates to:
  /// **'We Send To '**
  String get we_send_to;

  /// No description provided for @you_dont_receive_otp.
  ///
  /// In en, this message translates to:
  /// **'You Don\'t Receive OTP?'**
  String get you_dont_receive_otp;

  /// No description provided for @resend_otp.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP'**
  String get resend_otp;

  /// No description provided for @verification_completed.
  ///
  /// In en, this message translates to:
  /// **'Verification Completed'**
  String get verification_completed;

  /// No description provided for @account_verified.
  ///
  /// In en, this message translates to:
  /// **'Your account has been successfully verified.'**
  String get account_verified;

  /// No description provided for @enter_banking_info_title.
  ///
  /// In en, this message translates to:
  /// **'Enter your banking information'**
  String get enter_banking_info_title;

  /// No description provided for @enter_banking_info_description.
  ///
  /// In en, this message translates to:
  /// **'As a driver, enter your banking information.'**
  String get enter_banking_info_description;

  /// No description provided for @enter_car_info_title.
  ///
  /// In en, this message translates to:
  /// **'Enter your car information'**
  String get enter_car_info_title;

  /// No description provided for @enter_car_info_description.
  ///
  /// In en, this message translates to:
  /// **'As a driver, enter your car details below.'**
  String get enter_car_info_description;

  /// No description provided for @add_new_password_title.
  ///
  /// In en, this message translates to:
  /// **'Add New Password'**
  String get add_new_password_title;

  /// No description provided for @add_new_password_description.
  ///
  /// In en, this message translates to:
  /// **'Create a new password to secure your account. Make sure it’s something you’ll remember!'**
  String get add_new_password_description;

  /// No description provided for @upload_documents_title.
  ///
  /// In en, this message translates to:
  /// **'Upload All Documents'**
  String get upload_documents_title;

  /// No description provided for @upload_documents_description.
  ///
  /// In en, this message translates to:
  /// **'Upload all the required documents.'**
  String get upload_documents_description;

  /// No description provided for @forget_password_title.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password'**
  String get forget_password_title;

  /// No description provided for @forget_password_description.
  ///
  /// In en, this message translates to:
  /// **'Can’t remember your password? Jawad’s got your back—let’s get you going again.'**
  String get forget_password_description;

  /// No description provided for @verify_title.
  ///
  /// In en, this message translates to:
  /// **'Verify your account'**
  String get verify_title;

  /// No description provided for @verify_description.
  ///
  /// In en, this message translates to:
  /// **'We’ve sent a code to your mobile number. Please enter it below to verify your identity.'**
  String get verify_description;

  /// No description provided for @auth_register_title.
  ///
  /// In en, this message translates to:
  /// **'Register and go with us!'**
  String get auth_register_title;

  /// No description provided for @auth_register_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Whether you are a passenger or a driver, \'Jawad\' guarantees you a unique and easy-to-use experience'**
  String get auth_register_subtitle;

  /// No description provided for @auth_login_title.
  ///
  /// In en, this message translates to:
  /// **'Log in and enjoy your journey!'**
  String get auth_login_title;

  /// No description provided for @auth_login_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Whether you\'re a rider or a driver, Jawad ensures you a unique and user-friendly experience'**
  String get auth_login_subtitle;

  /// No description provided for @forget_password.
  ///
  /// In en, this message translates to:
  /// **'Forget Password'**
  String get forget_password;

  /// No description provided for @previous_trips.
  ///
  /// In en, this message translates to:
  /// **'My Previous Trips'**
  String get previous_trips;

  /// No description provided for @earnings.
  ///
  /// In en, this message translates to:
  /// **'Earnings'**
  String get earnings;

  /// No description provided for @trip.
  ///
  /// In en, this message translates to:
  /// **'My Trip'**
  String get trip;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @contact_description.
  ///
  /// In en, this message translates to:
  /// **'Get in touch with us via any of the following methods:'**
  String get contact_description;

  /// No description provided for @call_us.
  ///
  /// In en, this message translates to:
  /// **'Call Us'**
  String get call_us;

  /// No description provided for @email_us.
  ///
  /// In en, this message translates to:
  /// **'Email Us'**
  String get email_us;

  /// No description provided for @whatsapp_us.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp Us'**
  String get whatsapp_us;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading ...'**
  String get loading;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Complaints'**
  String get support;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @createComplaint.
  ///
  /// In en, this message translates to:
  /// **'Create Complaint'**
  String get createComplaint;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @complaint_screen_message.
  ///
  /// In en, this message translates to:
  /// **'Have a problem or feedback? Share your complaint here, and we’ll get back to you as soon as possible.'**
  String get complaint_screen_message;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @attachmentsOptional.
  ///
  /// In en, this message translates to:
  /// **'Attachments (Optional)'**
  String get attachmentsOptional;

  /// No description provided for @addAttachments.
  ///
  /// In en, this message translates to:
  /// **'Add Attachments'**
  String get addAttachments;

  /// No description provided for @submitComplaint.
  ///
  /// In en, this message translates to:
  /// **'Submit Complaint'**
  String get submitComplaint;

  /// No description provided for @files.
  ///
  /// In en, this message translates to:
  /// **'files'**
  String get files;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @primetag_copyright.
  ///
  /// In en, this message translates to:
  /// **'by Primetag Company'**
  String get primetag_copyright;

  /// No description provided for @new_request_received.
  ///
  /// In en, this message translates to:
  /// **'New request received'**
  String get new_request_received;

  /// No description provided for @no_requests.
  ///
  /// In en, this message translates to:
  /// **'No requests available'**
  String get no_requests;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// No description provided for @not_available.
  ///
  /// In en, this message translates to:
  /// **'Not Available'**
  String get not_available;

  /// No description provided for @activate_status_message.
  ///
  /// In en, this message translates to:
  /// **'Activate your status to available to start receiving requests'**
  String get activate_status_message;

  /// No description provided for @activate_status_button.
  ///
  /// In en, this message translates to:
  /// **'Activate Status'**
  String get activate_status_button;

  /// No description provided for @accept_request.
  ///
  /// In en, this message translates to:
  /// **'Accept Request'**
  String get accept_request;

  /// No description provided for @reject_request.
  ///
  /// In en, this message translates to:
  /// **'Reject Request'**
  String get reject_request;

  /// No description provided for @go_to_client.
  ///
  /// In en, this message translates to:
  /// **'Go to Client'**
  String get go_to_client;

  /// No description provided for @cancel_request.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel_request;

  /// No description provided for @start_trip.
  ///
  /// In en, this message translates to:
  /// **'Start Trip'**
  String get start_trip;

  /// No description provided for @finish_trip.
  ///
  /// In en, this message translates to:
  /// **'Finish Trip'**
  String get finish_trip;

  /// No description provided for @arrived_destination_button.
  ///
  /// In en, this message translates to:
  /// **'Arrived at Client Destination'**
  String get arrived_destination_button;

  /// No description provided for @select_language.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get select_language;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @onboarding_title_1.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Jawad'**
  String get onboarding_title_1;

  /// No description provided for @onboarding_desc_1.
  ///
  /// In en, this message translates to:
  /// **'Easily book your trip anytime, anywhere! Choose your destination, enjoy your journey, and leave the rest to us.'**
  String get onboarding_desc_1;

  /// No description provided for @onboarding_title_2.
  ///
  /// In en, this message translates to:
  /// **'Safe and Reliable Trips'**
  String get onboarding_title_2;

  /// No description provided for @onboarding_desc_2.
  ///
  /// In en, this message translates to:
  /// **'With Jawad\'s professional drivers, we provide you with a comfortable and secure experience, live trip tracking, and multiple payment options to suit you.'**
  String get onboarding_desc_2;

  /// No description provided for @onboarding_title_3.
  ///
  /// In en, this message translates to:
  /// **'Earn or Ride with Ease!'**
  String get onboarding_title_3;

  /// No description provided for @onboarding_desc_3.
  ///
  /// In en, this message translates to:
  /// **'Whether you\'re a rider or a driver, Jawad ensures you a unique and user-friendly experience. Start now and enjoy smart mobility!'**
  String get onboarding_desc_3;

  /// No description provided for @my_documents.
  ///
  /// In en, this message translates to:
  /// **'My Documents'**
  String get my_documents;

  /// No description provided for @select_document.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select_document;

  /// No description provided for @call.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get call;

  /// No description provided for @cancelTrip.
  ///
  /// In en, this message translates to:
  /// **'Cancel Trip'**
  String get cancelTrip;

  /// No description provided for @tripEnded.
  ///
  /// In en, this message translates to:
  /// **'Your trip has ended'**
  String get tripEnded;

  /// No description provided for @downloadInvoice.
  ///
  /// In en, this message translates to:
  /// **'Download Invoice'**
  String get downloadInvoice;

  /// No description provided for @reportBehavior.
  ///
  /// In en, this message translates to:
  /// **'Report Behavior'**
  String get reportBehavior;

  /// No description provided for @tripNumber.
  ///
  /// In en, this message translates to:
  /// **'Trip Number'**
  String get tripNumber;

  /// No description provided for @departure.
  ///
  /// In en, this message translates to:
  /// **'Departure'**
  String get departure;

  /// No description provided for @destination.
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get destination;

  /// No description provided for @distance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get distance;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @paymentInApp.
  ///
  /// In en, this message translates to:
  /// **'From the app'**
  String get paymentInApp;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @myWallet.
  ///
  /// In en, this message translates to:
  /// **'My Wallet'**
  String get myWallet;

  /// No description provided for @chargeWallet.
  ///
  /// In en, this message translates to:
  /// **'Charge Wallet'**
  String get chargeWallet;

  /// No description provided for @enterAmountHint.
  ///
  /// In en, this message translates to:
  /// **'Enter Amount ...'**
  String get enterAmountHint;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get requiredField;

  /// No description provided for @charge.
  ///
  /// In en, this message translates to:
  /// **'Charge'**
  String get charge;

  /// No description provided for @emptyUserNameHint.
  ///
  /// In en, this message translates to:
  /// **'Please enter your username'**
  String get emptyUserNameHint;

  /// No description provided for @ibanEmpty.
  ///
  /// In en, this message translates to:
  /// **'Please enter the IBAN'**
  String get ibanEmpty;

  /// No description provided for @ibanStartWithSA.
  ///
  /// In en, this message translates to:
  /// **'IBAN must start with \'SA\''**
  String get ibanStartWithSA;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @ibanLength.
  ///
  /// In en, this message translates to:
  /// **'Saudi IBAN must be 24 characters long'**
  String get ibanLength;

  /// No description provided for @ibanInvalidFormat.
  ///
  /// In en, this message translates to:
  /// **'Invalid IBAN format'**
  String get ibanInvalidFormat;

  /// No description provided for @plateRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get plateRequired;

  /// No description provided for @plateLength.
  ///
  /// In en, this message translates to:
  /// **'Plate number must be 4 characters (letters or digits)'**
  String get plateLength;

  /// No description provided for @plateInvalid.
  ///
  /// In en, this message translates to:
  /// **'Plate must contain only letters or numbers'**
  String get plateInvalid;

  /// No description provided for @emptyMobileHint.
  ///
  /// In en, this message translates to:
  /// **'Please enter your mobile number'**
  String get emptyMobileHint;

  /// No description provided for @notValidMobileHint.
  ///
  /// In en, this message translates to:
  /// **'Invalid mobile number'**
  String get notValidMobileHint;

  /// No description provided for @emptyEmailHint.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get emptyEmailHint;

  /// No description provided for @notValidEmailHint.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get notValidEmailHint;

  /// No description provided for @emptyPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get emptyPasswordHint;

  /// No description provided for @passwordValidateLengthHint.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 5 characters'**
  String get passwordValidateLengthHint;

  /// No description provided for @confirmPasswordEmpty.
  ///
  /// In en, this message translates to:
  /// **'Please enter confirm password'**
  String get confirmPasswordEmpty;

  /// No description provided for @confirmPasswordNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get confirmPasswordNotMatch;

  /// No description provided for @emptyFieldHint.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get emptyFieldHint;

  /// No description provided for @minValidateHint.
  ///
  /// In en, this message translates to:
  /// **'Input is too short'**
  String get minValidateHint;

  /// No description provided for @maxValidateHint.
  ///
  /// In en, this message translates to:
  /// **'Input is too long'**
  String get maxValidateHint;

  /// No description provided for @transactionsHistory.
  ///
  /// In en, this message translates to:
  /// **'Transactions History'**
  String get transactionsHistory;

  /// No description provided for @emptyTransactions.
  ///
  /// In en, this message translates to:
  /// **'Empty Transactions'**
  String get emptyTransactions;

  /// No description provided for @emptyNotifications.
  ///
  /// In en, this message translates to:
  /// **'Empty Notifications'**
  String get emptyNotifications;

  /// No description provided for @noNotificationsYet.
  ///
  /// In en, this message translates to:
  /// **'You Don\'t Have Any Notifications Yet!'**
  String get noNotificationsYet;

  /// No description provided for @noTransactionsYet.
  ///
  /// In en, this message translates to:
  /// **'You Don\'t Have Any Transactions Yet!'**
  String get noTransactionsYet;

  /// No description provided for @canceledTrips.
  ///
  /// In en, this message translates to:
  /// **'Canceled Trips'**
  String get canceledTrips;

  /// No description provided for @visitDetails.
  ///
  /// In en, this message translates to:
  /// **'Visit Details'**
  String get visitDetails;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
