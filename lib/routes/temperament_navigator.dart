import 'package:flutter/material.dart';

import '../modules/modules.dart';
import 'router_to.dart';

abstract class Go {
  static void pop(BuildContext context) {
    return RouterTo.pop(context);
  }

  static Future<void> home(BuildContext context) {
    return RouterTo.replace(context, HomeRoutes.home);
  }

  static Future<void> questions(BuildContext context) {
    return RouterTo.push(context, QuestionsRoutes.questions);
  }

  static Future<void> result(BuildContext context) {
    return RouterTo.replace(context, ResultRoutes.result);
  }

  static Future<void> about(BuildContext context) {
    return RouterTo.push(context, AboutRoutes.about);
  }
}
