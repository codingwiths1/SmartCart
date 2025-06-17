import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ChoiceCircleBox extends StatelessWidget {
  const ChoiceCircleBox({
    super.key,
    required this.sColor,
    required this.bColor,
    required this.isCheck,
    this.onSelected,  this.useBorder = false,
  });

  final Function(bool)? onSelected;
  final Color sColor;
  final Color bColor;
  final bool isCheck;
  final bool useBorder;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: SizedBox(),
      selected: isCheck,
      onSelected: onSelected,
      backgroundColor: bColor,
      selectedColor: sColor,
      avatar: Container(
        decoration: BoxDecoration(shape: BoxShape.circle),
      ),
      shape: CircleBorder(),
      labelPadding: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      side: useBorder? BorderSide(width: 2) : BorderSide.none,
      checkmarkColor: whiteColor,
    );
  }
}
