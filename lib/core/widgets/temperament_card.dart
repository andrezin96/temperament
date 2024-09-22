import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class TemperamentCard extends StatelessWidget {
  const TemperamentCard({
    super.key,
    this.height,
    this.padding,
    this.margin,
    this.child,
    this.color,
    this.borderColor,
  });

  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final Color? borderColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color ?? TemperamentColors.offWhiteBlueTint,
        border: Border.all(color: borderColor ?? TemperamentColors.secondaryBlue, width: 4),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      child: child,
    );
  }
}
