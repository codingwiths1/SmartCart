import 'package:ecommerce_app_thumbnail/frontend/screens/order/order_review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ReUsable Widgets/button.dart';
import '../ReUsable Widgets/cart/cart_product_item.dart';
import '../ReUsable Widgets/re_appbar.dart';
import '../constants/colors.dart';
import '../constants/spacing.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
        "url": "assets/images/product_images/nonshop_blue.webp",
        "product": " Galaxy Z Flip6",
        "brand": "SamSung",
        "price": "500"
      },
      {
        "url":
        "assets/images/product_images/61dlFzm4TbL._AC_UL480_FMwebp_QL65_.webp",
        "product": "Women's Heeled Sandals",
        "brand": "Nike",
        "price": "45"
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
      extendBodyBehindAppBar: true,

      /// AppBar
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        flexibleSpace: ReAppbar(
          showBackButton: true,
          isStack: false,
          widget1: Text(
            "Cart",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: sPadding,
          child: Column(
            children: [
              hSpacingMedium,
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {

                    return Stack(
                      children: [
                        CartProductItem(product : product[index]),

                        Positioned(
                          top: 10,
                          right: 15,
                          child: Material(
                              color: Colors.transparent,
                              child: Icon(Icons.clear)),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: 25),
                  itemCount: 10,
                ),
              hSpacingLarge
            ],
          ),
        ),
      ),

      /// BottomNavBar
      bottomNavigationBar: SizedBox(
        height: 70,
        child: GestureDetector(
          onTap: () {
            Get.to(() => OrderScreen());
          },
          child: Button(
            margin: aPadding,
            padding: aPadding,
            child:  Text(
                "Cashout \$1000",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: whiteColor),
              ),),
        ),
      ),
    );
  }
}
