import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/spacing.dart';
import '../screens/bottomNavbar screen/store_screen.dart';

class CarouselImages extends StatelessWidget {
  const CarouselImages({
    super.key,
    required this.images,
  });
  final String images;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: imageBorderRadius,
      onTap: () => Get.to(() => StoreScreen()),
      child: Padding(
        padding: imagePadding,
        child: ClipRRect(
            borderRadius: imageBorderRadius,
            child: Image.asset(
              fit: BoxFit.cover,
              images,
            )),
      ),
    );
  }
}
