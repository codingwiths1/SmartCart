import 'package:flutter/material.dart';

class ContainerBorder extends StatelessWidget {
  const ContainerBorder({
    super.key,
    required this.child,
    this.padding,
    this.margin,  this.rBDegree = 15,
  });
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double rBDegree;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(color: Colors.transparent,
          borderRadius: BorderRadius.circular(rBDegree),
          border: Border.all(
              width: 1, color: Theme.of(context).colorScheme.onPrimary),
        ),
        child: child);
  }
}
