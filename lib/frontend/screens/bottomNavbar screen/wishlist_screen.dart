import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iconsax/iconsax.dart';

import '../../ReUsable Widgets/re_appbar.dart';
import '../../constants/colors.dart';
import '../../constants/spacing.dart';
import '../../reusable widgets/homepage/verified_brand_name.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List product = [
      {
        "url":
            "assets/images/product_images/61dlFzm4TbL._AC_UL480_FMwebp_QL65_.webp",
        "product": "Women's Heeled Sandals",
        "brand": "Nike",
        "price": "45"
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
        "url": "assets/images/product_images/nonshop_blue.webp",
        "product": " Galaxy Z Flip6",
        "brand": "SamSung",
        "price": "500"
      },
      {
        "url": "assets/images/product_images/13340530802-e1.jpg",
        "product": "Galaxy Shoes",
        "brand": "ZARA",
        "price": "700"
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
        appBar: ReAppbar(
          widget2: Icon(Iconsax.add),
          isStack: false,
          widget: Text("Wishlist",
              style: Theme.of(context).textTheme.headlineMedium!.apply(
                    color: Theme.of(context).colorScheme.primary,
                  )),
        ),
        body: Padding(
            padding: EdgeInsets.only(top: appBar - 35, left: 16, right: 16),
            child:  MasonryGridView.builder(
                mainAxisSpacing: 30,
                crossAxisSpacing: 10,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 180,
                    child: Column(mainAxisSize: MainAxisSize.min,
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
                        Padding(
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
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
              ),
            ));
  }
}
