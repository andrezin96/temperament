import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../../modules.dart';
import '../pages/questions_screen.dart';

abstract class QuestionsPages {
  static Map<String, Widget Function(BuildContext)> routes = {
    QuestionsRoutes.questions: (context) => QuestionsScreen(
          controller: injector.get<QuestionsController>(),
        ),
  };
}
