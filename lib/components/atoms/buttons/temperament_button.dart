import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class TemperamentButton extends StatelessWidget {
  const TemperamentButton._({
    required this.label,
    this.onPressed,
    this.fontSize,
  });

  const TemperamentButton.primary({
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
        backgroundColor: TemperamentColors.secondaryBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TemperamentTextStyle.secondary.gigant.copyWith(
          color: TemperamentColors.offWhiteBlueTint,
        ),
      ),
    );
  }
}
