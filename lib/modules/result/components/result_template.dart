import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../components/atoms/atoms.dart';
import '../../../core/core.dart';
import '../../../routes/routes.dart';
import '../../../theme/theme.dart';
import '../controller/controller.dart';

class ResultTemplate extends StatelessWidget {
  const ResultTemplate({super.key, required this.controller});

  final ResultController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 96),
        children: [
          Text(
            'Seu temperamento é',
            textAlign: TextAlign.center,
            style: TemperamentTextStyle.secondary.gigant.copyWith(fontSize: 28),
          ),
          Observer(
            builder: (_) => TemperamentCard(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                '${controller.result}!',
                textAlign: TextAlign.center,
                style: TemperamentTextStyle.tertiary.gigant.copyWith(fontSize: 32),
              ),
            ),
          ),
          TemperamentCard(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(vertical: 16),
            borderColor: TemperamentColors.offWhiteBlueTint,
            child: Text(
              controller.detail,
              style: TemperamentTextStyle.secondary.medium,
            ),
          ),
          SizedBox(
            height: 60,
            child: TemperamentButton.primary(
              label: 'Fazer novamente',
              onPressed: () {
                controller.clearTemperament();
                go.home(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
