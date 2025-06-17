import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/spacing.dart';

class RatingProgressBar extends StatelessWidget {
  const RatingProgressBar({
    super.key, required this.number, required this.barValue,
  });

  final String number;
  final double barValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          number,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        wContainerSpacing,
        Flexible(
          child: LinearProgressIndicator(
              borderRadius: cBorderRadius,
              minHeight: 8,
              backgroundColor: choiceColors,
              value: barValue,
              valueColor:
              AlwaysStoppedAnimation(blueColor)),
        )
      ],
    );
  }
}
