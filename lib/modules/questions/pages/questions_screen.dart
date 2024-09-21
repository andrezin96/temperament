import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../components/components.dart';
import '../controller/questions_controller.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuestionsTemplate(
      controller: injector.get<QuestionsController>(),
    );
  }
}
