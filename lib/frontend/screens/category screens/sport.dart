import 'package:ecommerce_app_thumbnail/frontend/constants/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../reusable widgets/category/h_productcard.dart';
import '../../reusable widgets/homepage/verified_brand_name.dart';
import '../../reusable widgets/re_appbar.dart';
import '../../reusable widgets/row_text.dart';

class Sport extends StatelessWidget {
  const Sport({super.key, this.name = "Sports"});
  final String name;

  @override
  Widget build(BuildContext context) {
    List product = [
      {
        "url": "assets/images/product_images/13340530802-e1.jpg",
        "product": "Galaxy Shoes",
        "brand": "ZARA",
        "price": "700"
      },
      {
        "url": "assets/images/product_images/02193105330-e1.jpg",
        "product": " Printed Satin Midi Dress",
        "brand": "ZARA",
        "price": "110"
      },
      {
        "url":
            "assets/images/product_images/81ABgxPwuNL._AC_SX679_PIbundle-2,TopRight,0,0_SH20_.jpg",
        "product": "Johnson's Baby Care Essentials Gift Set",
        "brand": "Johnson & Johnson",
        "price": "9.05"
      },
      {
        "url":
            "assets/images/product_images/61dlFzm4TbL._AC_UL480_FMwebp_QL65_.webp",
        "product": "Women's Heeled Sandals",
        "brand": "Nike",
        "price": "45"
      },
      {
        "url": "assets/images/product_images/nonshop_blue.webp",
        "product": " Galaxy Z Flip6",
        "brand": "SamSung",
        "price": "500"
      },
      {
        "url": "assets/images/product_images/samsungwatch7-2_1_1.jpg",
        "product": "Galaxy Watch7",
        "brand": "SamSung",
        "price": "300"
      },
      {
        "url": "assets/images/product_images/iphone_16.png",
        "product": "Iphone 16",
        "brand": "Apple",
        "price": "1200"
      },
      {
        "url": "assets/images/product_images/12450420800-e1.jpg",
        "product": "Men Shoes",
        "brand": "Nike",
        "price": "299"
      },
      {
        "url":
            "assets/images/product_images/927f6a6558b1ee59c7973ad213fa5db2.jpg",
        "product": "SpiderMan: Miles Morales",
        "brand": "Sony",
        "price": "99.99"
      },
      {
        "url": "assets/images/product_images/1.jpg",
        "product": "White Nike Air Shoes",
        "brand": "Nike",
        "price": "100"
      },
    ];

    return Scaffold(

        ///............AppBar............///
        appBar: ReAppbar(
          showBackButton: true,
          isStack: false,
          widget1: Text(
            name,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: sPadding,

            ///...........Overall Column
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              hSpacingMedium,
              Center(
                child: SizedBox(
                  height: 180,
                  width: 360,

                  /// Promotional Image
                  child: ClipRRect(
                      borderRadius: cBorderRadius,
                      child: Image.asset(
                        promotion1,
                        fit: BoxFit.cover,
                      )),
                ),
              ),

              /// Row Text
              hSpacingLarge,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 20)),
                  InkWell(
                      onTap: () {
                        Get.toNamed("/ViewAll");
                        debugPrint("TAPPED");
                      },
                      child: Text("View all",
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: Theme.of(context).colorScheme.primary)))
                ],
              ),

              /// Products Row
              hSpacingMedium,
              SizedBox(
                height: 130,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return Row(
                      children: [
                        HProductCard(
                          product: product[index],
                        ),
                      ],
                    );
                  },
                  itemCount: product.length,
                  separatorBuilder: (_, __) => SizedBox(
                    width: 15,
                  ),
                ),
              ),

              hSpacingLarge,
              RowText(
                boldText: "You Might Like",
                usePadding: false,
                showSmallText: false,
              ),
              SizedBox(
                height: 20,
              ),
              MasonryGridView.builder(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 331,
                      padding: EdgeInsets.all(1),
                      width: 180,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //........................... Stack Widget Image && Discount && Favourite ............................//
                          Stack(children: [
                            ClipRRect(
                              borderRadius: cBorderRadius,
                              child: Image.asset(
                                product[index]["url"],
                                height: 180,
                                width: double.infinity,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Positioned(
                              top: dVertical,
                              left: dVertical,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    color: yellowColor,
                                    borderRadius: cBorderRadius),
                                child: Text("4%",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: blackColor)),
                              ),
                            ),
                            Positioned(
                              top: dVertical,
                              right: dVertical,
                              child: InkWell(
                                onTap: () {
                                  debugPrint("Tapped");
                                },
                                child: Icon(
                                  color: whiteColor,
                                  Iconsax.heart4,
                                  size: 28,
                                ),
                              ),
                            ),
                          ]),

                          //........................... Product Name ............................//
                          SizedBox(height: 20),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      product[index]["product"],
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .apply(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary)),
                                  SizedBox(height: 5),

                                  //........................... Product Brand ............................//
                                  VerifiedBrandName(
                                      brandName: product[index]["brand"]),

                                  //........................... Pricing && Add Icon ............................//// LayoutBuilder(
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 135,
                                        child: Text(
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          "\$${product[index]["price"]}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium!
                                              .copyWith(fontSize: 20),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 40, width: 40,
                                          // padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(15),
                                                  bottomRight:
                                                      Radius.circular(15))),
                                          child: Center(
                                            child: Icon(Iconsax.add,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
              hSpacingLarge
            ]),
          ),
        ));
  }
}
