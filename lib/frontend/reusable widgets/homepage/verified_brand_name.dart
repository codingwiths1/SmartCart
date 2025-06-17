import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/colors.dart';

class VerifiedBrandName extends StatelessWidget {
  const VerifiedBrandName({
    super.key,
    required this.brandName,
    this.size,
    this.iconSize = 21,
  });
  final String brandName;
  final double? size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(brandName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: size)),
        ),
        SizedBox(width: 2),
        Icon(
          Iconsax.verify5,
          color: blueColor,
          size: iconSize,
        )
      ],
    );
  }
}
