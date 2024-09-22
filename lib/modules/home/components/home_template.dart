import 'package:flutter/material.dart';

import '../../../components/atoms/atoms.dart';
import '../../../core/core.dart';
import '../../../routes/routes.dart';
import '../../../theme/theme.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 80, left: 24, right: 24),
        children: [
          TemperamentCard(
            padding: const EdgeInsets.symmetric(vertical: 24),
            margin: const EdgeInsets.symmetric(vertical: 16),
            borderColor: TemperamentColors.offWhiteBlueTint,
            child: Column(
              children: [
                Text(
                  'QUIZ DO\nTEMPERAMENTO',
                  style: TemperamentTextStyle.tertiary.exLarge.copyWith(fontSize: 42),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 220,
                  child: Image.asset(
                    'assets/icon/cerebro.png',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: TemperamentButton.primary(
              label: 'Iniciar',
              onPressed: () => go.questions(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: TextButton(
              onPressed: () => go.about(context),
              child: Text(
                'Como funciona?',
                style: TemperamentTextStyle.secondary.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
