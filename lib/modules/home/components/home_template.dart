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
            style: TextStyle(
              fontSize: 42,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.only(top: 32),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () => Go.questions(context),
              child: const Text(
                'Iniciar',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
