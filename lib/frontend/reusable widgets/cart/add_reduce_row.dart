import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/colors.dart';
import '../../constants/spacing.dart';
import '../product detail/circle_container_button.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {



    return Row(
      children: [
        CircleContainerButton(
          widget: Icon(
            Iconsax.minus,
            size: 20,
            color: blackColor,
          ),
          color: choiceColors,
          height: 25,
          width: 25,
        ),
        wContainerSpacing,
       Text("3",
            style: Theme.of(context).textTheme.titleLarge),
        wContainerSpacing,
        CircleContainerButton(
          showBorder: false,
          widget: Icon(
            Iconsax.add,
            size: 20,
            color: whiteColor,
          ),
          color: blueColor,
          height: 25,
          width: 25,
        ),
      ],
    );
  }
}
