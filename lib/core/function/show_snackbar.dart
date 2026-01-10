import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:geocoding/geocoding.dart';

import '../extension/space_extension.dart';
import '../utils/text_style.dart';

enum BarType { snackbar, materialBanner }

ScaffoldMessengerState showBar({
  required String title,
  required String message,
  required ContentType contentType,
  BarType barType = BarType.snackbar,
  required BuildContext context,
  List<Widget>? actions,
}) {
  final Widget content = Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    decoration: BoxDecoration(color: contentType.color, borderRadius: BorderRadius.circular(15)),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyle.style28B),
        10.gap,
        AutoSizeText(message, style: AppTextStyle.style14),
      ],
    ),
  );
  if (barType == BarType.materialBanner) {
    return ScaffoldMessenger.of(context)
      ..hideCurrentMaterialBanner()
      ..showMaterialBanner(MaterialBanner(elevation: 0, backgroundColor: Colors.transparent, forceActionsBelow: true, content: content, actions: actions ?? [const SizedBox.shrink()]));
  } else {
    return ScaffoldMessenger.of(context)
      ..hideCurrentMaterialBanner()
      ..showSnackBar(SnackBar(elevation: 0, behavior: SnackBarBehavior.floating, backgroundColor: Colors.transparent, content: content));
  }
}

class ContentType {
  final String message;

  final Color? color;

  const ContentType(this.message, [this.color]);

  static const ContentType help = ContentType('help', DefaultColors.helpBlue);
  static const ContentType failure = ContentType('failure', DefaultColors.failureRed);
  static const ContentType success = ContentType('success', DefaultColors.successGreen);
  static const ContentType warning = ContentType('warning', DefaultColors.warningYellow);
}

class DefaultColors {
  /// help
  static const Color helpBlue = Color(0xff3282B8);

  /// failure
  static const Color failureRed = Color(0xffc72c41);

  /// success
  static const Color successGreen = Color(0xff2D6A4F);

  /// warning
  static const Color warningYellow = Color(0xffFCA652);
}

String formatDate(String date) {
  final dateTime = DateTime.parse(date);

  String daySuffix(int day) {
    if (day >= 11 && day <= 13) return 'th';
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  final day = dateTime.day;
  final suffix = daySuffix(day);

  final formatted = DateFormat("d'$suffix' MMM, h:mm a").format(dateTime);

  return formatted;
}

Future<String> getLocationName(double lat, double lng) async {
  try {
    final placemarks = await placemarkFromCoordinates(lat, lng);

    if (placemarks.isEmpty) return '';

    final place = placemarks.first;

    return [place.street, place.subLocality, place.locality, place.administrativeArea, place.country].where((e) => e != null && e.isNotEmpty).join(', ');
  } catch (e) {
    log('❌ Reverse geocoding error: $e');
    return '';
  }
}
