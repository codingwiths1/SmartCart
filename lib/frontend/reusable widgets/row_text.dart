import 'package:flutter/material.dart';

import '../constants/spacing.dart';

class RowText extends StatelessWidget {
  const RowText({
    super.key,
    required this.boldText,
    this.smallText = "View All",
    this.showSmallText,
    this.usePadding = true,
    this.onTap,
    this.useOnTap = false,
  });
  final String boldText;
  final String smallText;
  final bool? showSmallText;
  final bool usePadding;
  final void Function()? onTap;
  final bool useOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: usePadding ? hSPadding : EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(boldText,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 20)),
          showSmallText == true
              ? useOnTap
                  ? InkWell(
                      onTap: onTap,
                      child: Text(smallText,
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: Theme.of(context).colorScheme.primary)))
                  : Text(smallText,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: Theme.of(context).colorScheme.primary))
              : SizedBox()
        ],
      ),
    );
  }
}
