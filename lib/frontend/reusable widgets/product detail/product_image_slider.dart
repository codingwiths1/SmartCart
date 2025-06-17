import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        itemBuilder: (_, __) => Container(
              margin: EdgeInsets.only(left: 10),
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 4, color: blueColor, style: BorderStyle.solid)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: whiteColor,
                  child: Image.asset(
                    "assets/images/product_images/12450420800-e1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
        itemCount: 16);
  }
}
