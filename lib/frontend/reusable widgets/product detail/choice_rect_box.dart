import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/funtion.dart';

class ChoiceRectBox extends StatelessWidget {
  const ChoiceRectBox(
      {super.key, this.onSelected, required this.isCheck, required this.text});
  final Function(bool)? onSelected;
  final bool isCheck;
  final String text;
  @override
  Widget build(BuildContext context) {
    bool isDark = isDarkMode(context);
    return ChoiceChip(
      label: isCheck
          ? Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.w600, color: lBColor),
            )
          : Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary),
            ),
      selected: isCheck,
      onSelected: onSelected,
      backgroundColor: isDark ? dBColor : lBColor,
      labelPadding: EdgeInsets.symmetric(horizontal: 2),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      checkmarkColor: lBColor,
      selectedColor: blueColor,
      side: BorderSide(
          width: 1.3,
          color: isCheck ? whiteColor : Theme.of(context).colorScheme.primary),
    );
  }
}
