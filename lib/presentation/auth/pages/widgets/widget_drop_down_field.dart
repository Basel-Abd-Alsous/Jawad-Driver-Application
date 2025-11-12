import 'package:flutter/material.dart';

import '../../../../core/utils/color.dart';
import '../../../../core/utils/text_style.dart';

class WidgetAuthDropdownField<T> extends StatelessWidget {
  final String hintText;
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? readOnly; // Dropdowns are usually not 'readOnly'  but kept for consistency

  const WidgetAuthDropdownField({
    super.key,
    required this.hintText,
    required this.items,
    required this.onChanged,
    this.value,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      items: items,
      onChanged: readOnly == true ? null : onChanged,
      validator: validator,
      style: AppTextStyle.style14.copyWith(color: AppColor.white),
      hint: Text(hintText, style: AppTextStyle.style12.copyWith(color: AppColor.white)),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconColor: AppColor.white,
        suffixIconColor: AppColor.white,
      ),
      dropdownColor: AppColor.black, // or any color you prefer
    );
  }
}
