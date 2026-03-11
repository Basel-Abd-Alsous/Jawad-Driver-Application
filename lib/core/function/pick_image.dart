import 'dart:io';

import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../l10n/app_localizations.dart';
import '../context/global.dart';
import '../utils/color.dart';
import '../widget/widget_dailog.dart';

Future<File?> imagePicker(ImageSource src) async {
  XFile? xFile = await ImagePicker().pickImage(source: src);
  if (xFile?.path == null) {
    SmartDialog.showToast('Error In Select Image', maskColor: AppColor.red);
  } else {
    return File(xFile!.path);
  }
  return null;
}

bool checkNewVersion(String message) {
  if (message.replaceAll(' ', '').contains('Anewversionisavailable') || message.replaceAll(' ', '').contains('يوجدإصدارجديدمتوفر')) {
    return true;
  } else {
    return false;
  }
}

Future<void> openStore() async {
  if (Platform.isAndroid) {
    await launchUrl(Uri.parse('https://play.google.com/store/apps/details?id=com.primetag.jawad_driver'));
  } else {
    await launchUrl(Uri.parse('https://apps.apple.com/jo/app/jawad-taxi-ride-hailing/id6748653527'));
  }
}

void erorrDialog(String message) {
  SmartDialog.show(
    clickMaskDismiss: checkNewVersion(message) ? false : true,
    backType: checkNewVersion(message) ? SmartBackType.block : SmartBackType.normal,
    builder: (context) {
      final local = AppLocalizations.of(GlobalContext.context)!;
      return WidgetDilog(
        isError: true,
        title: local.warning,
        message: message,
        cancelText: checkNewVersion(message) ? local.update : local.back,
        onCancel: () async {
          if (checkNewVersion(message)) {
            await openStore();
          } else {
            SmartDialog.dismiss();
          }
        },
      );
    },
  );
}

String convertArabicNumbersToEnglish(String input) {
  const arabicNumbers = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
  const englishNumbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

  for (int i = 0; i < arabicNumbers.length; i++) {
    input = input.replaceAll(arabicNumbers[i], englishNumbers[i]);
  }
  return input;
}
