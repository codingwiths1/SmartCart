import 'package:ecommerce_app_thumbnail/frontend/reusable%20widgets/homepage/verified_brand_name.dart';
import 'package:flutter/material.dart';

import '../../constants/spacing.dart';
import 'add_reduce_row.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key,
    this.usePriceRow = true, require, required  this.product,
  });

final Map product;
  final bool usePriceRow;
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: aPadding,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onTertiary,
          borderRadius: BorderRadius.circular(15)),

      /// Overall Column
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Product Image
              SizedBox(
                  width: 90,
                  height: 90,
                  child: ClipRRect(
                      borderRadius: cBorderRadius,
                      child: Image.asset(
                        product["url"]??"",
                        fit: BoxFit.contain,
                      ))),

              /// Product WriteUp
              wSpacingSmall,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    product["brand"].isEmpty
                        ? SizedBox.shrink()
                        : VerifiedBrandName(brandName: product["brand"] ??""),
                    LayoutBuilder(builder: (context, constraints) {
                      return SizedBox(
                        width: constraints.maxWidth - 25,
                        child: Text(product["product"] ?? "",
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.titleMedium),
                      );
                    }),

                    /// Counter && PriceTag  Row
                    hSpacingSmall,
                    usePriceRow
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Counter(),
                              Text(
                                "\$${ product["price"]}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(fontWeight: FontWeight.w600),
                                textAlign: TextAlign.end,
                              )
                            ],
                          )
                        : Text(
                        "\$${ product["price"]}",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w600),
                            textAlign: TextAlign.end,
                          ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
