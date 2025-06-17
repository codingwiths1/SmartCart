import 'package:flutter/material.dart';

import '../../constants/spacing.dart';
import '../../constants/strings.dart';
import '../homepage/verified_brand_name.dart';
import '../order/container_border.dart';

class BrandList extends StatelessWidget {
  const BrandList({
    super.key, required this.brandNames,
  });
final String brandNames;
  @override
  Widget build(BuildContext context) {
    return ContainerBorder(
        padding: aPadding,
        child: Row(
          children: [
            SizedBox(
                width: 33,
                child: Image.asset(
                  nikeNoBackground,
                  color: Theme.of(context).colorScheme.primary,
                  fit: BoxFit.cover,
                )),
            wContainerSpacing,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerifiedBrandName(
                    brandName: brandNames,
                    iconSize: 15,
                  ),
                  Text(
                    "267 products",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
