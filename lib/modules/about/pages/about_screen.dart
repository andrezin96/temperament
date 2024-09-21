import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../about.dart';
import '../components/components.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key, required this.controller});

  final AboutController controller;

  @override
  Widget build(BuildContext context) {
    return AboutTemplate(
      controller: injector.get<AboutController>(),
    );
  }
}
