import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/context/global.dart';
import '../../../core/utils/color.dart';
import '../../../main.dart';
import '../../auth/domain/model/requiest_models/bank_info_model.dart';
import '../../auth/domain/usecases/register_usecase.dart';
import '../domain/model/contact_model.dart';
import '../domain/model/feedback_model.dart';
import '../domain/model/params/feedback_param.dart';
import '../domain/usecase/drawer_usecase.dart';

part 'drawer_state.dart';
part 'drawer_cubit.freezed.dart';

class DrawerCubit extends Cubit<DrawerState> {
  final DrawerUsecase usecase;
  final RegisterUsecase registerUsecase;

  DrawerCubit({required this.usecase, required this.registerUsecase}) : super(const DrawerState.initial());

  ValueNotifier<String> content = ValueNotifier('');
  ValueNotifier<ContactModel?> contactUs = ValueNotifier(null);
  ValueNotifier<FeedbackModel?> feedbackCategory = ValueNotifier(null);

  /// Form key
  final formKey = GlobalKey<FormState>();
  final formKeyBankInfo = GlobalKey<FormState>();

  /// Controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  TextEditingController bankName = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController swift = TextEditingController();
  TextEditingController stcpay = TextEditingController();
  TextEditingController iban = TextEditingController();
  TextEditingController code = TextEditingController();

  /// Dropdown
  List<Map<String, dynamic>> feedbackCategories = [];
  String? selectedFeedbackType;

  Future<void> getPrivacy() async {
    SmartDialog.showLoading();
    final result = await usecase.getPrivacy();
    result.fold(
      (left) {
        SmartDialog.dismiss();
      },
      (right) {
        content.value = right.data!;
        SmartDialog.dismiss();
      },
    );
  }

  Future<void> getTerms() async {
    SmartDialog.showLoading();
    final result = await usecase.getTerms();
    result.fold(
      (left) {
        SmartDialog.dismiss();
      },
      (right) {
        print(right.data);
        content.value = '';
        content.value = right.data!;
        SmartDialog.dismiss();
      },
    );
  }

  Future<void> getContact() async {
    SmartDialog.showLoading();
    final result = await usecase.getContactUs();
    result.fold((left) => SmartDialog.dismiss(), (right) {
      print(right.data);
      contactUs.value = right.data!;
      SmartDialog.dismiss();
    });
  }

  Future<void> getFeedbackCategory() async {
    SmartDialog.showLoading();
    final result = await usecase.getFeedbackList();
    result.fold((left) => SmartDialog.dismiss(), (right) {
      print(right.data);
      feedbackCategory.value = right.data!;
      SmartDialog.dismiss();
    });
  }

  Future<void> sendFeedback() async {
    if (!formKey.currentState!.validate()) return;
    SmartDialog.showLoading();
    FeedbackParam feedbackParam = FeedbackParam(appType: "driver", feedbackType: selectedFeedbackType ?? "", email: emailController.text, phone: phoneController.text, message: messageController.text);
    final result = await usecase.sendFeedback(feedbackParam);
    result.fold((left) => SmartDialog.dismiss(), (right) {
      print(right.data);
      SmartDialog.dismiss();
      SmartDialog.showToast('Succes Send Your Feedback', maskColor: AppColor.green);
      GlobalContext.context.pop();
    });
  }

  Future<void> uploadBankInfo() async {
    if (formKeyBankInfo.currentState!.validate()) {
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

  // Launch phone call
  void callPhone(String phoneNumber) async {
    final Uri url = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(url);
  }

  // Launch email
  void sendEmail(String email) async {
    final Uri url = Uri(scheme: 'mailto', path: email, query: 'subject=Support Request&body=Hello, I need help with...');
    await launchUrl(url);
  }

  void shareJawadDriverApp() {
    const link = 'https://apps.apple.com/us/app/jawad-driver/id6748653527';
    Share.share(
      'حمّل تطبيق جواد للسائقين 🚗\n'
      'وسجّل الآن وابدأ استقبال الطلبات بكل سهولة 👌\n'
      '$link',
      subject: 'تحميل تطبيق جواد – سائق',
    );
  }

  Future<void> openUrl(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
