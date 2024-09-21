import 'package:flutter/material.dart';

import '../../modules.dart';
import '../pages/questions_screen.dart';

abstract class QuestionsPages {
  static Map<String, Widget Function(BuildContext)> routes = {
    QuestionsRoutes.questions: (context) => const QuestionsScreen(),
  };
}
