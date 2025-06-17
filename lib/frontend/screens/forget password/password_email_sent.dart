import 'package:ecommerce_app_thumbnail/frontend/screens/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ReUsable Widgets/button.dart';
import '../../constants/colors.dart';
import '../../constants/spacing.dart';
import '../../constants/strings.dart';

class PasswordEmailSent extends StatefulWidget {
  const PasswordEmailSent({
    super.key,
  });
  @override
  State<PasswordEmailSent> createState() => _PasswordEmailSentState();
}

class _PasswordEmailSentState extends State<PasswordEmailSent> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => Get.rawSnackbar(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        borderRadius: 10,
        backgroundColor: blueColor,
        snackPosition: SnackPosition.TOP,
        icon: Icon(
          Icons.info_outline_rounded,
          color: whiteColor,
        ),
        messageText: Text(
          "Password reset email has been sent to your email",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: whiteColor,
              fontFamily: "Roboto"),
        )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: sPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                hSpacingLarge,

                //........................... Image ............................//
                Image.asset(emailSent, height: imageAssetHeight),
                hSpacingMedium,

                //........................... Text Write_Ups ............................//
                Text("Password Reset Email Sent!",
                    style: Theme.of(context).textTheme.headlineMedium),
                hSpacingSmall,
                Text(
                  "Your Account Security is Our Priority! We've SEnt You a Secure Link To Safely Change Your Password and Keep Your Account Protected",
                  textAlign: TextAlign.center,
                ),
                hSpacingMedium,

                //........................... Done Button ............................//
                GestureDetector(
                  onTap: () {
                    Navigator.maybePop(context);
                  },
                  child: Button(
                    margin: sPadding,
                    child: Text(
                      "Resend Email",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: whiteColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        //........................... Icon Clear ............................//
        Positioned(
            top: dVertical * 4,
            right: dVertical,
            child: GestureDetector(
                onTap: () {
                Get.offAll(()=> LoginPage());
                },
                child: Icon(CupertinoIcons.clear)))
      ]),
    );
  }
}
