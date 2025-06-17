import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserInfoRow extends StatelessWidget {
  const UserInfoRow({
    super.key,
    required this.smallText,
    required this.bigText,
    this.child = const Icon(Iconsax.arrow_right_34),
  });
  final String smallText;
  final String bigText;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            smallText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          flex: 7,
          child: Text(
            bigText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(flex: 1, child: child)
      ],
    );
  }
}
