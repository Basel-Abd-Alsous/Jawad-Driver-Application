import 'package:flutter/material.dart';

import '../context/global.dart';
import '../function/hex_color.dart';

abstract class AppColor {
  AppColor._();

  static const Color red = Colors.red;
  static const Color green = Colors.green;
  static Color red200 = Colors.red.shade200;
  static Color red600 = Colors.red.shade600;
  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static const Color black = Colors.black;

  static Color primaryColor = Theme.of(GlobalContext.context).colorScheme.primary;
  static Color onPrimaryColor = Theme.of(GlobalContext.context).colorScheme.onPrimary;
  static const Color primaryColor200 = Color(0xff6a80b9);
  static const Color primaryColor600 = Color(0xff8495be);

  static Color secondColor = HexColor.fromHex('#85469b');
  static Color onSecondColor = Theme.of(GlobalContext.context).colorScheme.secondary;
}
