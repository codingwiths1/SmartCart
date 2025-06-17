import 'package:ecommerce_app_thumbnail/frontend/constants/colors.dart';
import 'package:ecommerce_app_thumbnail/frontend/constants/spacing.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../reusable widgets/re_appbar.dart';

class EditUsername extends StatelessWidget {
  const EditUsername({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: ReAppbar(
        showBackButton: true,
        isStack: false,
        widget1: Text(
          "Change username",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: sPadding,
        child: Column(
          children: [
            hSpacingLarge,
            Text(
                "Update your username to personalize your profile. Your username helps us identify you and makes your shopping experience more tailored. Choose a unique name that represents you"),
            hSpacingMedium,
            Form(
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      label: Text("Username"),
                      labelStyle: Theme.of(context).textTheme.titleSmall,
                      border: OutlineInputBorder(borderRadius: cBorderRadius)),
                )),
            hSpacingMedium,
            Material(
              borderRadius: cBorderRadius,
              color: blueColor,
              child: Container(
                padding: aPadding,
                child: Center(
                  child: Text("Change username",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: whiteColor)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
