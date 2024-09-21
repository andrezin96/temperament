import 'package:flutter/material.dart';

import '../../../components/atoms/atoms.dart';
import '../../../routes/routes.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 96, left: 24, right: 24),
        children: [
          const Text(
            'Descubra seu\nTemperamento',
            style: TextStyle(
              fontSize: 42,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ClipOval(
              child: Image.asset(
                'assets/images/temperamentos.png',
              ),
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.only(top: 32, bottom: 16),
            child: TemperamentButtons.primary(
              label: 'Iniciar',
              onPressed: () => go.questions(context),
            ),
          ),
          TextButton(
            onPressed: () => go.about(context),
            child: Text(
              'Como funciona?',
              style: TextStyle(
                color: Colors.blue[700],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
