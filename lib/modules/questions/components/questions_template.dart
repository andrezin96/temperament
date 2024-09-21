import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../routes/go.dart';
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
                builder: (_) => ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: Text(
                        '${index + 1}- ${question.label}',
                        style: const TextStyle(fontSize: 18),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    QuestionRadio(
                      title: question.optionA,
                      groupValue: controller.currentRadioValue,
                      value: 'a',
                      onChanged: (value) => controller.setCurrentValue(value!),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 32),
                      child: QuestionRadio(
                        title: question.optionB,
                        groupValue: controller.currentRadioValue,
                        value: 'b',
                        onChanged: (value) => controller.setCurrentValue(value!),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: QuestionElevatedButton(
                        onPressed: () async {
                          if (controller.currentRadioValue.isEmpty) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Selecione uma resposta!'),
                                  duration: Duration(seconds: 2),
                                  behavior: SnackBarBehavior.floating,
                                  margin: EdgeInsets.all(16),
                                ),
                              );
                            }
                          } else {
                            final result = await controller.next(index);
                            if (result) {
                              controller.resetQuiz();
                              if (context.mounted) {
                                await go.result(context);
                              }
                            }
                          }
                        },
                        label: index == 9 ? 'Concluir' : 'Próxima',
                        fontSize: 20,
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
