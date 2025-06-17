import 'package:flutter/material.dart';

class ReDivider extends StatelessWidget {
  const ReDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = Theme.of(context).brightness == Brightness.dark;
    return Divider(
      thickness: dark ? 0.2 : 0.9,
      color: Theme.of(context).colorScheme.onPrimary,
    );
  }
}
