import 'package:ecommerce_app_thumbnail/frontend/reusable%20widgets/product%20detail/circle_container_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/shipping_address_selection/shipping_address_selection.dart';
import '../../constants/colors.dart';
import '../../constants/spacing.dart';

class SelectedAddress extends StatelessWidget {
  const SelectedAddress({
    super.key,
    required this.selectedAddress, required this.name, required this.phone, required this.address,
  });

  final bool selectedAddress;
  final String name;
  final String phone;
  final String address;


  @override
  Widget build(BuildContext context) {

    return Stack(children: [
      Container(
        width: double.maxFinite,
        padding: aPadding,
        decoration: BoxDecoration(
            color: selectedAddress ? blueColor.withOpacity(0.5) : choiceColors,
            borderRadius: cBorderRadius),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 250,
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                name,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: blackColor),
              ),
            ),
            hContainerSpacing,
            SizedBox(
              width: 250,
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
               phone,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: blackColor, fontWeight: FontWeight.w500),
              ),
            ),
            hContainerSpacing,
            Text(
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: blackColor),
               address),
          ],
        ),
      ),
      Positioned(
        right: dVertical,
        top: dVertical,
        child: InkWell(
          child: CircleContainerButton(
            showBorder: true,
            widget: Center(
                child: selectedAddress
                    ? Icon(
                        Icons.done,
                        size: 15,
                        color: whiteColor,
                      )
                    : SizedBox()),
            color: selectedAddress ? blackColor : Colors.transparent,
            height: 20,
            width: 20,
          ),
        ),
      )
    ]);
  }
}
