import 'package:flutter/material.dart';

import '../pages/pages.dart';
import 'home_routes.dart';

abstract class HomePages {
  static Map<String, HomeScreen Function(BuildContext)> routes = {
    HomeRoutes.home: (context) => const HomeScreen(),
  };
}
