import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../routes/temperament_navigator.dart';
import '../controller/questions_controller.dart';
import 'question_elevated_button.dart';
import 'question_radio.dart';

class QuestionsTemplate extends StatelessWidget {
  const QuestionsTemplate({super.key, required this.controller});

  final QuestionsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => controller.pageController.jumpToPage(0),
            icon: const Icon(Icons.replay_outlined),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller.pageController,
            itemCount: controller.questions.length,
            itemBuilder: (context, index) {
              final question = controller.questions[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Observer(
                  builder: (_) => Column(
                    children: [
                      Text(
                        '${index + 1}- ${question.label}',
                        style: const TextStyle(fontSize: 18),
                        textAlign: TextAlign.justify,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: QuestionRadio(
                          title: question.optionB,
                          groupValue: controller.currentRadioValue,
                          value: 'a',
                          onChanged: (value) => controller.setCurrentValue(value!),
                        ),
                      ),
                      QuestionRadio(
                        title: question.optionB,
                        groupValue: controller.currentRadioValue,
                        value: 'b',
                        onChanged: (value) => controller.setCurrentValue(value!),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: QuestionElevatedButton(
                          onPressed: () {
                            controller.result(index);
                            if (index == 9) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(controller.temperament),
                                ),
                              );
                            }
                            Go.home(context);
                          },
                          child: Text(index == 9 ? 'Concluir' : 'Próxima'),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
