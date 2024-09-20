import 'package:flutter/material.dart';

import '../pages/pages.dart';
import 'about_routes.dart';

abstract class AboutPages {
  static Map<String, AboutScreen Function(BuildContext)> routes = {
    AboutRoutes.about: (context) => const AboutScreen(),
  };
}
