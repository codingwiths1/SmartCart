import 'package:flutter/material.dart';

import '../../constants/spacing.dart';

class RoundedBorderContainer extends StatelessWidget {
  const RoundedBorderContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(13),
    this.margin = const EdgeInsets.symmetric(horizontal: 18),
  });
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
            borderRadius: cBorderRadius,
            border: Border.all(
                width: 1.1, color: Theme.of(context).colorScheme.onSecondary)),
        child: child);
  }
}
