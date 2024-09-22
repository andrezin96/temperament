import 'package:flutter/material.dart';

import '../../../components/atoms/atoms.dart';
import '../../../core/core.dart';
import '../../../routes/routes.dart';
import '../../../theme/theme.dart';
import '../about.dart';

class AboutTemplate extends StatelessWidget {
  const AboutTemplate({super.key, required this.controller});

  final AboutController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 12),
        children: [
          TemperamentCard(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(bottom: 16),
            borderColor: TemperamentColors.offWhiteBlueTint,
            child: Text(
              controller.about,
              style: TemperamentTextStyle.secondary.medium,
            ),
          ),
          SizedBox(
            height: 60,
            child: TemperamentButton.primary(
              onPressed: () => go.questions(context),
              label: 'Iniciar Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
