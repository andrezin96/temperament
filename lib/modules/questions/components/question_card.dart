import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../theme/theme.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.label,
    required this.index,
  });

  final String label;
  final String index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TemperamentCard(
          height: 200,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Text(
              label,
              style: TemperamentTextStyle.tertiary.large,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width * 0.41,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: TemperamentColors.offWhiteBlueTint,
              border: Border.all(color: TemperamentColors.secondaryBlue, width: 4),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                index,
                style: TemperamentTextStyle.tertiary.large,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
