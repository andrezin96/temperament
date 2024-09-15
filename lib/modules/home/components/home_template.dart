import 'package:flutter/material.dart';

import '../../../routes/temperament_navigator.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ListView(
        padding: const EdgeInsets.all(32),
        children: [
          const Text(
            'Descubra seu\nTemperamento',
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () => Go.questions(context),
            child: const Text('Iniciar'),
          ),
        ],
      ),
    );
  }
}
