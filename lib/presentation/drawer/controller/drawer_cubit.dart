import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../domain/usecase/drawer_usecase.dart';

part 'drawer_state.dart';
part 'drawer_cubit.freezed.dart';

class DrawerCubit extends Cubit<DrawerState> {
  final DrawerUsecase usecase;
  DrawerCubit({required this.usecase}) : super(DrawerState.initial());

  ValueNotifier<String> content = ValueNotifier('');
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();
  List<File> attachments = [];
  final String phoneNumber = '+962791234567';
  final String email = 'support@example.com';
  final String whatsappNumber = '+962791234567';

  Future<void> pickAttachments() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      attachments.addAll(result.paths.whereType<String>().map((e) => File(e)));
    }
  }

  void submit() {
    if (!formKey.currentState!.validate()) return;

    debugPrint(emailController.text);
    debugPrint(phoneController.text);
    debugPrint(messageController.text);
    debugPrint(attachments.length.toString());
  }

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

  // Launch phone call
  void callPhone() async {
    final Uri url = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(url);
  }

  // Launch email
  void sendEmail() async {
    final Uri url = Uri(scheme: 'mailto', path: email, query: 'subject=Support Request&body=Hello, I need help with...');
    await launchUrl(url);
  }

  // Launch WhatsApp
  void openWhatsApp() async {
    final String url = 'https://wa.me/${whatsappNumber.replaceAll("+", "")}';
    await launchUrl(Uri.parse(url));
  }
}
