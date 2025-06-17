import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../clippath_round_border.dart';

class HomePageHeaderContainer extends StatelessWidget {
  const HomePageHeaderContainer({
    super.key,
    this.height = 400,
    this.widget = const SizedBox(),
  });
  final double height;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipRBorder(),
      child: Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
            color: blueColor,
          ),
        ),
    );
  }
}
