import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class TemperamentIconButton extends StatelessWidget {
  const TemperamentIconButton._({
    required this.icon,
    this.onPressed,
    this.highlightColor,
  });

  const TemperamentIconButton.back({
    void Function()? onPressed,
  }) : this._(
          icon: Icons.arrow_back,
          onPressed: onPressed,
        );

  const TemperamentIconButton.restart({
    void Function()? onPressed,
  }) : this._(
          icon: Icons.replay_outlined,
          onPressed: onPressed,
        );

  const TemperamentIconButton.close({
    void Function()? onPressed,
  }) : this._(
          icon: Icons.close,
          onPressed: onPressed,
        );

  final IconData icon;
  final Color? highlightColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      highlightColor: highlightColor ?? TemperamentColors.offWhiteBlueTint,
      icon: Icon(icon),
      color: TemperamentColors.primaryBlue,
    );
  }
}
