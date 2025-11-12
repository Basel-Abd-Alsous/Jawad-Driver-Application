import 'package:flutter/material.dart';

abstract class AppTextStyle extends TextStyle {
  static TextStyle _style(double fontSize, {bool bold = false}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
    );
  }

  static TextStyle style10 = _style(10);
  static TextStyle style10B = _style(10, bold: true);
  static TextStyle style12 = _style(12);
  static TextStyle style12B = _style(12, bold: true);
  static TextStyle style14 = _style(14);
  static TextStyle style14B = _style(14, bold: true);
  static TextStyle style16 = _style(16);
  static TextStyle style16B = _style(16, bold: true);
  static TextStyle style18 = _style(18);
  static TextStyle style18B = _style(18, bold: true);
  static TextStyle style20 = _style(20);
  static TextStyle style20B = _style(20, bold: true);
  static TextStyle style22 = _style(22);
  static TextStyle style22B = _style(22, bold: true);
  static TextStyle style24 = _style(24);
  static TextStyle style24B = _style(24, bold: true);
  static TextStyle style26 = _style(26);
  static TextStyle style26B = _style(26, bold: true);
  static TextStyle style28 = _style(28);
  static TextStyle style28B = _style(28, bold: true);
  static TextStyle style30 = _style(30);
  static TextStyle style30B = _style(30, bold: true);
  static TextStyle style32 = _style(32);
  static TextStyle style32B = _style(32, bold: true);
  static TextStyle style34 = _style(34);
  static TextStyle style34B = _style(34, bold: true);
  static TextStyle style36 = _style(36);
  static TextStyle style36B = _style(36, bold: true);
  static TextStyle style38 = _style(38);
  static TextStyle style38B = _style(38, bold: true);
  static TextStyle style40 = _style(40);
  static TextStyle style40B = _style(40, bold: true);
}
