import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/spacing.dart';
import '../homepage/verified_brand_name.dart';

class HProductCard extends StatelessWidget {
  const HProductCard({
    super.key,
    required this.product,
  });

  final Map<String, dynamic> product;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onTertiary,
          borderRadius: BorderRadius.circular(20)),
      height: 130,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: cBorderRadius,
            child: Image.asset(
              product["url"] ?? "",
              width: 120,
              fit: BoxFit.contain,
            ),
          ),

          /// OverAll Column
          wSpacingSmall,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25, top: 10, bottom: 2),

                  /// Description Column
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product["product"] ?? "",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      hContainerSpacing,
                      product["brand"].isEmpty
                          ? SizedBox.shrink()
                          : VerifiedBrandName(
                              brandName: "${product["brand"]}",
                              size: 12,
                              iconSize: 12,
                            ),
                      SizedBox(
                        height: 26,
                      ),
                    ],
                  ),
                ),

                /// Price && Add Button
                // Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$700",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Center(
                          child: Icon(Iconsax.add,
                              size: 25,
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
