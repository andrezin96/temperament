import 'package:flutter/material.dart';

class QuestionElevatedButton extends StatelessWidget {
  const QuestionElevatedButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
