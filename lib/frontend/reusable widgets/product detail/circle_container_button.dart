import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/spacing.dart';

class CircleContainerButton extends StatelessWidget {
  const CircleContainerButton({
    super.key,
    required this.widget,
    required this.color,
    this.height = 40,
    this.width = 40,
    this.showBorder = false,
  });
  final Widget widget;
  final double height;
  final double width;
  final Color color;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.none,
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: roundBorder,
            color: color,
            border: showBorder
                ? Border.all(width: 2, color: blackColor)
                : Border.all(width: 0, color: Colors.transparent)),
        child: widget);
  }
}
