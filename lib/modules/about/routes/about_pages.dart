import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../about.dart';

abstract class AboutPages {
  static Map<String, AboutScreen Function(BuildContext)> routes = {
    AboutRoutes.about: (context) => AboutScreen(
          controller: injector.get<AboutController>(),
        ),
  };
}
