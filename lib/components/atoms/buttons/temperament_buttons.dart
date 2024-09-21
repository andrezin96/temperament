import 'package:flutter/material.dart';

class TemperamentButtons extends StatelessWidget {
  const TemperamentButtons._({
    required this.label,
    this.onPressed,
    this.fontSize,
  });

  const TemperamentButtons.primary({
    required String label,
    double? fontSize,
    void Function()? onPressed,
  }) : this._(
          label: label,
          fontSize: fontSize,
          onPressed: onPressed,
        );

  final String label;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[700],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize ?? 22,
          color: Colors.white,
        ),
      ),
    );
  }
}
