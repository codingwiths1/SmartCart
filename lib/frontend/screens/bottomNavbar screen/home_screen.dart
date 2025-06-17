import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../controllers/home_controller.dart';
import '../../ReUsable Widgets/carousel_widget.dart';
import '../../ReUsable Widgets/row_text.dart';
import '../../constants/colors.dart';
import '../../constants/spacing.dart';
import '../../constants/strings.dart';
import '../../reusable widgets/homepage/homepage_header_container.dart';
import '../../reusable widgets/homepage/verified_brand_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    List images = [
      promotion1,
      promotion2,
      promotion3,
      promotion4,
    ];

    List category = [
      {"url": "assets/images/Categories Icons/picon1.png", "text": "Sport"},
      {"url": "assets/images/Categories Icons/picon2.png", "text": "Foot ware"},
      {"url": "assets/images/Categories Icons/picon3.png", "text": "Game"},
      {"url": "assets/images/Categories Icons/picon4.png", "text": "Laptops"},
      {"url": "assets/images/Categories Icons/picon5.png", "text": "Phones"},
      {"url": "assets/images/Categories Icons/picon6.png", "text": "Fashion"},
      {"url": "assets/images/Categories Icons/picon7.png", "text": "Groceries"},
      {"url": "assets/images/Categories Icons/picon8.png", "text": "Babies"},
    ];
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
    var tapped = false.obs;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //........................... Container With Inward Curve ............................//

            HomePageHeaderContainer(
              widget: SizedBox()

              //........................... Column ............................//

            ),

            //........................... Carousel Slider ............................//

            hSpacingSmall,

            //........................... Product Display GridView ............................//

          ],
        ),
      ),
    );
  }
}
