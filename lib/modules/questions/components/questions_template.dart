import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../components/atoms/atoms.dart';
import '../../../routes/go.dart';
import '../../../theme/theme.dart';
import '../controller/questions_controller.dart';
import 'question_card.dart';
import 'question_radio.dart';

class QuestionsTemplate extends StatelessWidget {
  const QuestionsTemplate({super.key, required this.controller});

  final QuestionsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 54),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TemperamentIconButton.back(
                          onPressed: () => go.pop(context),
                        ),
                        TemperamentIconButton.restart(
                          onPressed: controller.resetQuiz,
                        ),
                      ],
                    ),
                    QuestionCard(
                      index: (index + 1).toString(),
                      label: question.label,
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
                      child: TemperamentButton.primary(
                        onPressed: () async {
                          if (controller.currentRadioValue.isEmpty) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Selecione uma resposta!',
                                    style: TemperamentTextStyle.secondary.normal
                                        .copyWith(color: TemperamentColors.offWhiteBlueTint),
                                  ),
                                  duration: const Duration(seconds: 2),
                                  behavior: SnackBarBehavior.floating,
                                  margin: const EdgeInsets.all(16),
                                  backgroundColor: TemperamentColors.primaryBlue,
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
