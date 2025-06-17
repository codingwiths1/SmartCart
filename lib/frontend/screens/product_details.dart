import 'package:ecommerce_app_thumbnail/frontend/reusable%20widgets/store%20page/rounded_border_container.dart';
import 'package:ecommerce_app_thumbnail/frontend/screens/ratings/rating_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../ReUsable Widgets/Profile Page/re_divider.dart';
import '../ReUsable Widgets/button.dart';
import '../ReUsable Widgets/re_appbar.dart';
import '../ReUsable Widgets/row_text.dart';
import '../constants/colors.dart';
import '../constants/spacing.dart';
import '../reusable widgets/clippath_round_border.dart';
import '../reusable widgets/homepage/verified_brand_name.dart';
import '../reusable widgets/product detail/circle_container_button.dart';
import '../reusable widgets/product detail/product_image_slider.dart';
import 'cart_screen.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, });


  @override
  Widget build(BuildContext context) {
   var product = Get.arguments;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: ReAppbar(
          isStack: false,
          widget2: Material(
            color: lGrey,
            borderRadius: roundBorder,
            child: InkWell(
              borderRadius: roundBorder,
              onTap: () {
              },
              child: CircleContainerButton(
                widget:  Center(
                      child:  Icon(
                              Iconsax.heart,
                              color: blackColor,
                            )),

                color: Colors.transparent,
              ),
            ),
          ),
          widget: GestureDetector(
              onTap: () {
             Navigator.pop(context);
              },
              child: CircleContainerButton(
                  widget: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: blackColor,
                    ),
                  ),
                  color: lGrey))),
      body: SingleChildScrollView(
        //........................... Overall Column ............................//
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: ClipRBorder(),
              child: InkWell(
                onTap: () {
                  Get.to(
                      fullscreenDialog: true,
                      () => Dialog.fullscreen(
                              child: Column(
                            children: [
                              hSpacingLarge,
                              SizedBox(
                                height: 400,
                                width: 400,
                                child: Image.asset(
                                  product["url"],
                                  fit: BoxFit.contain,
                                ),
                              ),
                              hSpacingLarge,
                              hSpacingLarge,
                              hSpacingLarge,
                              Center(
                                child: InkWell(
                                  borderRadius: cBorderRadius,
                                  onTap: () => Navigator.pop(context),
                                  child: RoundedBorderContainer(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 13),
                                      child: Text(
                                        "Close",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      )),
                                ),
                              )
                            ],
                          )));
                },
                child: Container(
                  height: 370,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            product["url"],
                          ),
                          fit: BoxFit.contain)),
                  child: Stack(children: [
                    //........................... Product Image Slider ............................//

                    Align(
                      alignment: Alignment(0, 0.8),
                      child: SizedBox(
                        height: 90,
                        child: ProductImageSlider(),
                      ),
                    )
                  ]),
                ),
              ),
            ),

            /// Body Column
            ///Rating && Share Button

            Padding(
              padding: sPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  hSpacingSmall,

                  /// Rating && share button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Iconsax.star5,
                            color: Colors.amber,
                            size: 25,
                          ),
                          wContainerSpacing,
                          Text("5.0",
                              style: Theme.of(context).textTheme.titleLarge),
                          Text("(199)",
                              style: Theme.of(context).textTheme.titleLarge)
                        ],
                      ),
                      Icon(Icons.share)
                    ],
                  ),
                  hSpacingSmall,

                  /// Discount Container && Text Row
                  Row(
                    children: [
                      Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  color: yellowColor,
                                  borderRadius: cBorderRadius),
                              child: Text("20%",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: blackColor)),
                            ),
                      wContainerSpacing,
                      Text(
                              "\$200",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      decoration: TextDecoration.lineThrough),
                            ),
                
                           wContainerSpacing,
                      Text(
                        "\$700",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  hSpacingSmall,

                  /// Product Title Row
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    product["product"],
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(),
                  ),

                  /// Product Status Row
                  hSpacingSmall,
                  Row(
                    children: [
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        "Status:",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontSize: 14),
                      ),
                      wContainerSpacing,
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        "In Stock",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                    ],
                  ),

                  /// VerifiedBrandName
                  hSpacingSmall,
                  VerifiedBrandName(brandName: product["brand"]),

                  /// Variation
                  /// Variation Container
                  hSpacingSmall,
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: cBorderRadius,
                        color: Colors.grey.shade200),

                    /// Variation Column
                    child: Column(
                      children: [
                        /// Variation Row
                        Row(
                          children: [
                            Text(
                              "Variation",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: dBColor),
                            ),
                            wSpacingSmall,
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Price:",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontSize: 15, color: dBColor),
                                    ),
                                    wContainerSpacing,
                                   Text(
                                            "\$700",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: dBColor),
                                          ),
                                    wContainerSpacing,
                                    Text(
                                      "\$700",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: dBColor),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      "Status:",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontSize: 14, color: dBColor),
                                    ),
                                    wContainerSpacing,
                                    Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      "In Stock",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: dBColor,
                                              fontSize: 17),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),

                        /// Variation Description
                        hContainerSpacing,
                        Text(
                         "",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontSize: 15,
                                  color: dBColor,
                                  fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),


                  /// Checkout Button
                  hSpacingMedium,
                  Material(
                    color: Color(0xff2962FF),
                    borderRadius: cBorderRadius,
                    child: InkWell(
                      onTap: () => Get.to(() => CartScreen()),
                      borderRadius: cBorderRadius,
                      child: Button(
                        bgColor: Colors.transparent,
                        child: Text(
                          "Checkout",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: whiteColor),
                        ),
                      ),
                    ),
                  ),
                  hSpacingMedium,

                  /// RowText
                  RowText(
                    boldText: "Description",
                    usePadding: false,
                  ),

                  /// Product Description
                  hSpacingSmall,
                  ReadMoreText(
                    "",
                    trimExpandedText: "...Read less \u2191",
                    trimCollapsedText: "Read more",
                    trimMode: TrimMode.Line,
                    style: Theme.of(context).textTheme.titleMedium,
                    moreStyle: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: blueColor),
                    lessStyle: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: blueColor),
                    trimLines: 1,
                  ),

                  /// Divider
                  hSpacingMedium,
                  ReDivider(),

                  /// Review Text Row
                  hSpacingMedium,
                  GestureDetector(
                    onTap: () => Get.toNamed("/RatingsScreen"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Reviews",
                                style: Theme.of(context).textTheme.titleLarge),
                            SizedBox(
                              width: 2,
                            ),
                            Text("(199)",
                                style: Theme.of(context).textTheme.titleLarge),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  hSpacingMedium,
                  GestureDetector(
                      onTap: () => Get.toNamed("/RatingsScreen"),
                      child: Container(
                        color: Colors.transparent,
                        child: RatingRow(
                          showRatingStars: true,
                          ratings: 4.5,
                        ),
                      )),

                  hSpacingLarge
                ],
              ),
            ),
          ],
        ),
      ),

      /// BottomNavBar
      bottomNavigationBar: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleContainerButton(
                    height: 30,
                    width: 30,
                    widget: Icon(
                      Iconsax.minus,
                      color: whiteColor,
                    ),
                    color: lGrey),
                wContainerSpacing,
                Text("3", style: Theme.of(context).textTheme.titleMedium),
                wContainerSpacing,
                CircleContainerButton(
                    height: 30,
                    width: 30,
                    widget: Icon(
                      Iconsax.add,
                      color: whiteColor,
                    ),
                    color: blackColor),
              ],
            ),

            /// Add To Cart
            Material(
              borderRadius: cBorderRadius,
              color: Theme.of(context).colorScheme.primary,
              child: InkWell(
                onTap: () => Get.to(() => CartScreen()),
                borderRadius: cBorderRadius,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.shopping_cart,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      wContainerSpacing,
                      Text("Cart",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
