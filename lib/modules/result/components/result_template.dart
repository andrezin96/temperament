import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../components/atoms/atoms.dart';
import '../../../routes/routes.dart';
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
          const Text(
            'Seu temperamento é',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          Observer(
            builder: (_) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                '${controller.result}!',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 32),
              ),
            ),
          ),
          Text(
            controller.detail,
            style: const TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 60,
            child: TemperamentButtons.primary(
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
