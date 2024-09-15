import 'package:flutter/material.dart';

import '../pages/splash_screen.dart';
import 'splash_routes.dart';

abstract class SplashPages {
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashRoutes.splash: (context) => const SplashScreen(),
  };
}
