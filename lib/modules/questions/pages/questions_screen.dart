import 'package:flutter/material.dart';

import '../components/components.dart';
import '../controller/questions_controller.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key, required this.controller});

  final QuestionsController controller;

  @override
  Widget build(BuildContext context) {
    return QuestionsTemplate(
      controller: controller,
    );
  }
}
