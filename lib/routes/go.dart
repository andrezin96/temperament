import 'package:flutter/material.dart';

import '../modules/modules.dart';

class Go {
  void pop(BuildContext context) {
    return Navigator.pop(context);
  }

  Future<void> home(BuildContext context) {
    return Navigator.pushReplacementNamed(context, HomeRoutes.home);
  }

  Future<void> questions(BuildContext context) {
    return Navigator.pushNamed(context, QuestionsRoutes.questions);
  }

  Future<void> result(BuildContext context) {
    return Navigator.pushReplacementNamed(context, ResultRoutes.result);
  }

  Future<void> about(BuildContext context) {
    return Navigator.pushNamed(context, AboutRoutes.about);
  }
}

final Go go = Go();
