import 'package:flutter/material.dart';

import '../constants/spacing.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.child,
    this.margin,
    this.padding = const EdgeInsets.all(13),  this.bgColor = const Color(0xff2962FF),
  });
  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets padding;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(clipBehavior: Clip.none,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: cBorderRadius,
        color: bgColor,
      ),
      child: Center(child: child),
    );
  }
}
