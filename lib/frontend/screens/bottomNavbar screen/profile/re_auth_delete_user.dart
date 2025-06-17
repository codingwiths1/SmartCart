import 'package:ecommerce_app_thumbnail/frontend/constants/colors.dart';
import 'package:ecommerce_app_thumbnail/frontend/constants/spacing.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


import '../../../reusable widgets/re_appbar.dart';

class ReAuthDeleteUser extends StatelessWidget {
  const ReAuthDeleteUser({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: ReAppbar(
        widget1: Text(
          "Re-Authenticate User",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 22),
        ),
        showBackButton: true,
        isStack: false,
      ),
      body: Padding(
        padding: sPadding,
        child: Column(
          children: [
            hSpacingLarge,
            Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text("E-mail"),
                          labelStyle: Theme.of(context).textTheme.titleMedium,
                          prefixIcon: Icon(Iconsax.direct_right),
                          border: OutlineInputBorder(
                            borderRadius: cBorderRadius,
                          )),
                    ),
                    hSpacingSmall,
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text("Password"),
                          labelStyle: Theme.of(context).textTheme.titleMedium,
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye,color: Theme.of(context).colorScheme.primary,),
                          border: OutlineInputBorder(
                            borderRadius: cBorderRadius,
                          )),
                    ),
                  ],
                )),
            hSpacingMedium,
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: cBorderRadius, color: blueColor),
              child: Center(
                child: Text(
                  "Verify",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontSize: 16, color: whiteColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
