import 'package:flutter/material.dart';

import '../pages/pages.dart';
import 'result_routes.dart';

abstract class ResultPages {
  static Map<String, Widget Function(BuildContext)> routes = {
    ResultRoutes.result: (context) => const ResultScreen(),
  };
}
