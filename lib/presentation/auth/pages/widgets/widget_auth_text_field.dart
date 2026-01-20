import 'package:flutter/material.dart';

import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';

class WidgetAuthTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextStyle? textStyle;
  final TextStyle? hentTextStyle;
  final bool? readOnly;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final int? maxLength;
  const WidgetAuthTextField({
    super.key,
    required this.controller,
    this.keyboardType,
    this.prefixIcon,
    this.readOnly,
    this.onTap,
    this.validator,
    required this.hintText,
    this.obscureText,
    this.suffixIcon,
    this.textStyle,
    this.maxLength,
    this.hentTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      readOnly: readOnly ?? false,
      onTap: onTap,
      maxLength: maxLength,
      obscureText: obscureText ?? false,
      style: textStyle ?? AppTextStyle.style14.copyWith(color: AppColor.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hentTextStyle ?? AppTextStyle.style12.copyWith(color: AppColor.white),
        contentPadding: const EdgeInsets.all(10),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconColor: AppColor.white,
        suffixIconColor: AppColor.white,
      ),
    );
  }
}
