import 'package:flutter/material.dart';

import '../constants/spacing.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({
    super.key,
    required this.imageString,
  });
  final String imageString;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: aPadding,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              width: 0.5, color: Theme.of(context).colorScheme.primary)),
      child: Image.asset(imageString, height: imageHeightSmall),
    );
  }
}
