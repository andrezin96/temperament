import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../components/components.dart';
import '../controller/controller.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResultTemplate(
      controller: injector.get<ResultController>()..readTemperament(),
    );
  }
}
