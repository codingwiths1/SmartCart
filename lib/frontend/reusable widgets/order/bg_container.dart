import 'package:flutter/material.dart';

class BgContainer extends StatelessWidget {
  const BgContainer({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onTertiary,
          borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}
