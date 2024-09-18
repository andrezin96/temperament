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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue.shade700),
        borderRadius: BorderRadius.circular(12),
      ),
      child: RadioListTile(
        title: Text(widget.title),
        value: widget.value,
        groupValue: widget.groupValue,
        activeColor: Colors.blue[700],
        onChanged: widget.onChanged,
      ),
    );
  }
}
