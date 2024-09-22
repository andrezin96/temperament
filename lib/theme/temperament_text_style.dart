import 'package:flutter/material.dart';

import 'theme.dart';

const String temperamentFont = 'BarlowCondensedw';

class TemperamentTextStyle {
  const TemperamentTextStyle._();

  static final primary = _Primary();
  static final secondary = _Secondary();
  static final tertiary = _Tertiary();
}

class _Primary {
  TextStyle get normal => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.w300,
        color: TemperamentColors.darkBlue,
        fontSize: 14,
      );

  TextStyle get medium => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.w300,
        color: TemperamentColors.darkBlue,
        fontSize: 16,
      );

  TextStyle get large => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.w300,
        color: TemperamentColors.darkBlue,
        fontSize: 18,
      );

  TextStyle get exLarge => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.w300,
        color: TemperamentColors.darkBlue,
        fontSize: 20,
      );

  TextStyle get gigant => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.w300,
        color: TemperamentColors.darkBlue,
        fontSize: 22,
      );
}

class _Secondary {
  TextStyle get normal => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.normal,
        color: TemperamentColors.darkBlue,
        fontSize: 14,
      );

  TextStyle get medium => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.normal,
        color: TemperamentColors.darkBlue,
        fontSize: 16,
      );

  TextStyle get large => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.normal,
        color: TemperamentColors.darkBlue,
        fontSize: 18,
      );

  TextStyle get exLarge => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.normal,
        color: TemperamentColors.darkBlue,
        fontSize: 20,
      );

  TextStyle get gigant => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.normal,
        color: TemperamentColors.darkBlue,
        fontSize: 22,
      );
}

class _Tertiary {
  TextStyle get normal => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.bold,
        color: TemperamentColors.darkBlue,
        fontSize: 14,
      );

  TextStyle get medium => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.bold,
        color: TemperamentColors.darkBlue,
        fontSize: 16,
      );

  TextStyle get large => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.bold,
        color: TemperamentColors.darkBlue,
        fontSize: 18,
      );

  TextStyle get exLarge => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.bold,
        color: TemperamentColors.darkBlue,
        fontSize: 20,
      );

  TextStyle get gigant => const TextStyle(
        fontFamily: temperamentFont,
        fontWeight: FontWeight.bold,
        color: TemperamentColors.darkBlue,
        fontSize: 22,
      );
}
