import 'dart:io';

import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/color.dart';

Future<File?> imagePicker(ImageSource src) async {
  XFile? xFile = await ImagePicker().pickImage(source: src);
  if (xFile?.path == null) {
    SmartDialog.showToast('Error In Select Image', maskColor: AppColor.red);
  } else {
    return File(xFile!.path);
  }
  return null;
}
