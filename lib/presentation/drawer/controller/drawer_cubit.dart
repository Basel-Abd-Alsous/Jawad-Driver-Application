import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/context/global.dart';
import '../../../core/utils/color.dart';
import '../domain/model/contact_model.dart';
import '../domain/model/feedback_model.dart';
import '../domain/model/params/feedback_param.dart';
import '../domain/usecase/drawer_usecase.dart';

part 'drawer_state.dart';
part 'drawer_cubit.freezed.dart';

class DrawerCubit extends Cubit<DrawerState> {
  final DrawerUsecase usecase;
  DrawerCubit({required this.usecase}) : super(const DrawerState.initial());

  ValueNotifier<String> content = ValueNotifier('');
  ValueNotifier<ContactModel?> contactUs = ValueNotifier(null);
  ValueNotifier<FeedbackModel?> feedbackCategory = ValueNotifier(null);

  /// Form key
  final formKey = GlobalKey<FormState>();

  /// Controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

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

  Future<void> openUrl(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
