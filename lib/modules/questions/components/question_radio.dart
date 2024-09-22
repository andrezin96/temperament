import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../theme/theme.dart';

class QuestionRadio extends StatefulWidget {
  const QuestionRadio({
    super.key,
    required this.title,
    required this.value,
    this.groupValue,
    this.onChanged,
  });

  final String title;
  final String value;
  final String? groupValue;
  final void Function(String?)? onChanged;

  @override
  State<QuestionRadio> createState() => _QuestionRadioState();
}

class _QuestionRadioState extends State<QuestionRadio> {
  @override
  Widget build(BuildContext context) {
    return TemperamentCard(
      borderColor: TemperamentColors.offWhiteBlueTint,
      child: RadioListTile(
        title: Text(
          widget.title,
          style: TemperamentTextStyle.secondary.medium,
        ),
        value: widget.value,
        groupValue: widget.groupValue,
        fillColor: const WidgetStatePropertyAll(
          TemperamentColors.primaryBlue,
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}
