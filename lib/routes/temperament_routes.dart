import 'package:flutter/material.dart';

import '../modules/modules.dart';

abstract class TemperamentRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    ...SplashPages.routes,
    ...HomePages.routes,
    ...QuestionsPages.routes,
    ...AboutPages.routes,
    ...ResultPages.routes,
  };
}
