import 'package:flutter/material.dart';

import 'theme.dart';

class TemperamentThemeData {
  const TemperamentThemeData._();

  static final primary = _TemperamentThemeData();
}

class _TemperamentThemeData {
  ThemeData get temperamentTheme => ThemeData(
        scaffoldBackgroundColor: TemperamentColors.lightBlue,
      );
}
