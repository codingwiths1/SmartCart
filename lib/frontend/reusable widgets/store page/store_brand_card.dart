import 'package:ecommerce_app_thumbnail/frontend/reusable widgets/store page/rounded_border_container.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/colors.dart';
import '../../constants/spacing.dart';

class StoreBrandCard extends StatelessWidget {
  const StoreBrandCard({
    super.key,
    required this.brandName,
    required this.productAvailable,
    required this.brandLogo,
    required this.productImage,
    this.top = 25,
  });
  final String brandName;
  final String productAvailable;
  final String brandLogo;
  final String productImage;

  final double top;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedBorderContainer(
            margin: EdgeInsets.only(top: top, left: 18, right: 18),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 35,
                          child: Image.asset(
                            brandLogo,
                            color: Theme.of(context).colorScheme.primary,
                          )),
                      SizedBox(width: 15),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(brandName,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                              SizedBox(width: 2),
                              Icon(
                                Iconsax.verify5,
                                color: blueColor,
                                size: 15,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              "$productAvailable products",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ClipRRect(
                          borderRadius: cBorderRadius,
                          child: Image.asset(productImage, fit: BoxFit.contain)),
                    ),
                    wContainerSpacing,
                    Expanded(
                      child: ClipRRect(
                          borderRadius: cBorderRadius,
                          child: Image.asset(productImage, fit: BoxFit.contain)),
                    ),
                    wContainerSpacing,
                    Expanded(
                      child: ClipRRect(
                          borderRadius: cBorderRadius,
                          child: Image.asset(productImage, fit: BoxFit.contain)),
                    ),
                  ],
                )
              ],
            )),
      ],
    );
  }
}
