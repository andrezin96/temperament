import 'package:flutter/material.dart';

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
    return RadioListTile(
      title: Text(widget.title),
      value: widget.value,
      groupValue: widget.groupValue,
      onChanged: widget.onChanged,
    );
  }
}
