import 'package:flutter/material.dart';

import '../../../components/atoms/atoms.dart';

class QuestionElevatedButton extends StatelessWidget {
  const QuestionElevatedButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.fontSize,
  });

  final String label;
  final double? fontSize;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TemperamentButtons.primary(
      label: label,
      fontSize: fontSize,
      onPressed: onPressed,
    );
  }
}
