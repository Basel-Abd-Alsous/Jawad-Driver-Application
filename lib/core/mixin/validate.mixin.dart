import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

mixin FormValidationMixin {
  final _passwordRegEx = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

  final _upperCaseRegEx = RegExp(r'[A-Z]');

  final _lowerCaseRegEx = RegExp(r'[a-z]');

  final _numberRegEx = RegExp(r'[0-9]');

  final _emailRegEx = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

  final _mobileRegEx = RegExp(r'^05[0-9]{8}$');
  String? validateUserName(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.emptyUserNameHint;
    }
    return null;
  }

  String? validateNull(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.requiredField;
    }
    return null;
  }

  String? validateIBAN(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.ibanEmpty;
    }

    final iban = value.toUpperCase().replaceAll(' ', '');

    if (!iban.startsWith('SA')) {
      return AppLocalizations.of(context)!.ibanStartWithSA;
    }

    if (iban.length != 24) {
      return AppLocalizations.of(context)!.ibanLength;
    }

    final saIbanRegex = RegExp(r'^SA');

    if (!saIbanRegex.hasMatch(iban)) {
      return AppLocalizations.of(context)!.ibanInvalidFormat;
    }

    return null;
  }

  String? validatePlat(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.plateRequired;
    }

    if (value.length > 4) {
      return AppLocalizations.of(context)!.plateLength;
    }

    return null;
  }

  String? validatePlat2(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.plateRequired;
    }

    if (value.length != 4) {
      return AppLocalizations.of(context)!.plateLength;
    }

    final plateRegex = RegExp(r'^[A-Z0-9]{4}$', caseSensitive: false);
    if (!plateRegex.hasMatch(value)) {
      return AppLocalizations.of(context)!.plateInvalid;
    }

    return null;
  }

  String? validateMobile(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.emptyMobileHint;
    }
    if (!_mobileRegEx.hasMatch(value)) {
      return AppLocalizations.of(context)!.notValidMobileHint;
    }
    return null;
  }

  String? validateEmail(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.emptyEmailHint;
    }
    if (!_emailRegEx.hasMatch(value)) {
      return AppLocalizations.of(context)!.notValidEmailHint;
    }
    return null;
  }

  String? validatePassword(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.emptyPasswordHint;
    }

    if (value.length < 5) {
      return AppLocalizations.of(context)!.passwordValidateLengthHint;
    }

    if (!value.contains(_upperCaseRegEx)) {
      return null;
    }

    if (!value.contains(_lowerCaseRegEx)) {
      return null;
    }

    if (!value.contains(_numberRegEx)) {
      return null;
    }

    if (!_passwordRegEx.hasMatch(value)) {
      return null;
    }

    return null;
  }

  String? validateConfirmPassword(BuildContext context, String? value, String password) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.confirmPasswordEmpty;
    }
    if (value != password) {
      return AppLocalizations.of(context)!.confirmPasswordNotMatch;
    }
    return null;
  }

  String? validateLength(BuildContext context, {required String? value, required int minLength, required int maxLength}) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context)!.emptyFieldHint;
    }
    if (value.length < minLength) {
      return AppLocalizations.of(context)!.minValidateHint;
    }
    if (value.length > maxLength) {
      return AppLocalizations.of(context)!.maxValidateHint;
    }
    return null;
  }
}
