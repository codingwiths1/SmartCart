import 'dart:async';

import 'package:ecommerce_app_thumbnail/frontend/screens/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ReUsable Widgets/button.dart';
import '../../constants/colors.dart';
import '../../constants/spacing.dart';
import '../../constants/strings.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key, this.email = ""});
  final String email;
  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  verifyEmail() async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      User? user = auth.currentUser;
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
        Get.rawSnackbar(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            borderRadius: 10,
            backgroundColor: blueColor,
            snackPosition: SnackPosition.TOP,
            icon: Icon(
              Icons.info_outline_rounded,
              color: whiteColor,
            ),
            messageText: Text(
              "Account created successfully",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: whiteColor,
                  fontFamily: "Roboto"),
            ));
        Get.rawSnackbar(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            borderRadius: 10,
            backgroundColor: blueColor,
            snackPosition: SnackPosition.TOP,
            icon: Icon(
              Icons.info_outline_rounded,
              color: whiteColor,
            ),
            messageText: Text(
              "Verification code has been sent to your email",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: whiteColor,
                  fontFamily: "Roboto"),
            ));
      } else {
        Get.rawSnackbar(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            borderRadius: 10,
            backgroundColor: blueColor,
            snackPosition: SnackPosition.TOP,
            icon: Icon(
              Icons.info_outline_rounded,
              color: whiteColor,
            ),
            messageText: Text(
              "Email already verified",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: whiteColor,
                  fontFamily: "Roboto"),
            ));
      }
    } catch (e) {
      return;
    }
  }

  resendEmail() async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      User? user = auth.currentUser;
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
        Get.rawSnackbar(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            borderRadius: 10,
            backgroundColor: blueColor,
            snackPosition: SnackPosition.TOP,
            icon: Icon(
              Icons.info_outline_rounded,
              color: whiteColor,
            ),
            messageText: Text(
              "Verification code has been sent to your email",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: whiteColor,
                  fontFamily: "Roboto"),
            ));
      } else {
        Get.rawSnackbar(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            borderRadius: 10,
            backgroundColor: blueColor,
            snackPosition: SnackPosition.TOP,
            icon: Icon(
              Icons.info_outline_rounded,
              color: whiteColor,
            ),
            messageText: Text(
              "Email already verified",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: whiteColor,
                  fontFamily: "Roboto"),
            ));
      }
    } catch (e) {
      Get.rawSnackbar(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          borderRadius: 10,
          backgroundColor: blueColor,
          snackPosition: SnackPosition.TOP,
          icon: Icon(
            Icons.info_outline_rounded,
            color: whiteColor,
          ),
          messageText: Text(
            "Verification code has been sent to your email",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: whiteColor,
                fontFamily: "Roboto"),
          ));
    }
  }

  autoRedirect() async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        user.reload();
        if (user.emailVerified) {
          timer.cancel();
          Get.toNamed("/EmailVerified");
        }
      }
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      verifyEmail();
      autoRedirect();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sPadding,
        child: SingleChildScrollView(
          child: Stack(children: [
            Column(
              children: [
                hSpacingLarge,
                Image.asset(emailSent, height: imageAssetHeight),
                hSpacingMedium,
                Text("Verify your email address!",
                    style: Theme.of(context).textTheme.headlineMedium),
                hSpacingMedium,
                Text(widget.email, textAlign: TextAlign.center),
                hSpacingSmall,
                Text(
                  "Congratulations! Your Account Awaits. Verify Your Email To Start Shopping and Experience a World of Unrivalled Deals and Personalised Offers",
                  textAlign: TextAlign.center,
                ),
                hSpacingMedium,
                hSpacingSmall,
                GestureDetector(
                  onTap: resendEmail,
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
            Positioned(
                top: dVertical * 4,
                right: dVertical,
                child: GestureDetector(
                    onTap: () {
                      Get.to(() => LoginPage());
                    },
                    child: Icon(CupertinoIcons.clear)))
          ]),
        ),
      ),
    );
  }
}
