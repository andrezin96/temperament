import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../pages/questions_screen.dart';
import 'questions_routes.dart';

abstract class QuestionsPages {
  static Map<String, Widget Function(BuildContext)> routes = {
    QuestionsRoutes.questions: (context) => QuestionsScreen(
          controller: Injector.questionsController,
        ),
  };
}
