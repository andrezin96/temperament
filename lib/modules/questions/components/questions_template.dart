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
            onPressed: controller.resetQuiz,
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
              return Observer(
                builder: (_) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        '${index + 1}- ${question.label}',
                        style: const TextStyle(fontSize: 18),
                        textAlign: TextAlign.justify,
                      ),
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
                    Container(
                      height: 80,
                      padding: const EdgeInsets.only(top: 32),
                      child: QuestionElevatedButton(
                        onPressed: () {
                          final result = controller.next(index);
                          if (result != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(result),
                              ),
                            );
                            Go.pop(context);
                          }
                        },
                        child: Text(
                          index == 9 ? 'Concluir' : 'Próxima',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
