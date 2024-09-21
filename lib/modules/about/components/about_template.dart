import 'package:flutter/material.dart';

import '../../../routes/routes.dart';
import '../about.dart';

class AboutTemplate extends StatelessWidget {
  const AboutTemplate({super.key, required this.controller});

  final AboutController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Text(controller.about),
          Container(
            height: 60,
            margin: const EdgeInsets.only(top: 32, bottom: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () => go.questions(context),
              child: const Text(
                'Iniciar quiz',
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
