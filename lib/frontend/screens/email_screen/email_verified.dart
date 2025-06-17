import 'package:flutter/material.dart';

import '../../ReUsable Widgets/button.dart';
import '../../constants/colors.dart';
import '../../constants/spacing.dart';
import '../../constants/strings.dart';

class EmailVerified extends StatelessWidget {
  const EmailVerified({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              hAppBar,

              //........................... Image ............................//
              Image.asset(allDone, height: imageAssetHeight),
              hSpacingLarge,

              //........................... Text Write_ups ............................//
              Text("Your account successfully created!",
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              hSpacingMedium,
              Text(
                  "Welcome To Your Ultimate Shopping Destination, Your Account Is Created, Unleash The Joy of Seamless Online Shopping!",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall),
              hSpacingLarge,

              //........................... Button ............................//
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, "/LoginPage");
                },
                child: Button(
                    margin: sPadding,
                    child: Text(
                      "continue",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: whiteColor),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
