import 'package:ecommerce_app_thumbnail/frontend/constants/colors.dart';
import 'package:ecommerce_app_thumbnail/frontend/constants/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/strings.dart';
import '../reusable widgets/profile page/re_divider.dart';
import '../reusable widgets/re_appbar.dart';
import 'login_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar.................................................................
      appBar: ReAppbar(isStack: false, showBackButton: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: sPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              hSpacingMedium,

              // Let's create your account........................................
              Text(
                "Let's create your account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              hSpacingMedium,
              Form(
                  child: Column(
                children: [
                  // TextFormFields...............................................
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: Theme.of(context).textTheme.headlineSmall,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: cBorderRadius),
                              labelText: "First Name",
                              labelStyle:
                                  Theme.of(context).textTheme.titleSmall,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                      wSpacingMedium,
                      Expanded(
                        child: TextFormField(
                          style: Theme.of(context).textTheme.headlineSmall,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: cBorderRadius),
                              labelText: "Last Name",
                              labelStyle:
                                  Theme.of(context).textTheme.titleSmall,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                    ],
                  ),
                  hSpacingSmall,
                  TextFormField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: cBorderRadius),
                        labelText: "Username",
                        labelStyle: Theme.of(context).textTheme.titleSmall,
                        prefixIcon: Icon(Iconsax.user_edit)),
                  ),
                  hSpacingSmall,
                  TextFormField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: cBorderRadius),
                        labelText: "E-mail",
                        labelStyle: Theme.of(context).textTheme.titleSmall,
                        prefixIcon: Icon(Iconsax.direct)),
                  ),
                  hSpacingSmall,
                  TextFormField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: cBorderRadius),
                        labelText: "Phone Number",
                        labelStyle: Theme.of(context).textTheme.titleSmall,
                        prefixIcon: Icon(Iconsax.call)),
                  ),
                  hSpacingSmall,
                  TextFormField(
                      style: Theme.of(context).textTheme.headlineSmall,
                      obscureText: true,
                      decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderRadius: cBorderRadius),
                          labelText: "Password",
                          labelStyle: Theme.of(context).textTheme.titleSmall,
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(
                              color: Theme.of(context).colorScheme.primary,
                               Iconsax.eye_slash)),
                    ),

                ],
              )),
              hSpacingMedium,

              // Terms of use.....................................................
              Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Checkbox(
                        checkColor: whiteColor,
                        activeColor: blueColor,
                        value: true,
                        onChanged: (value) {}),
                  ),
                  wSpacingSmall,
                  Text.rich(TextSpan(children: [
                    TextSpan(text: "I agree to  "),
                    TextSpan(
                        text: "Privacy Policy",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                decoration: TextDecoration.underline,
                                decorationThickness: 1.3)),
                    TextSpan(text: " and  "),
                    TextSpan(
                        text: "Terms of use",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                decoration: TextDecoration.underline,
                                decorationThickness: 1.3))
                  ]))
                ],
              ),

              // Create Account ..................................................
              hSpacingMedium,
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: cBorderRadius, color: blueColor),
                child: Center(
                  child: Text("Create Account",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: whiteColor)),
                ),
              ),

              // Or Sign Up With..................................................
              hContainerSpacing,
              // Login...........................................................
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Already have an account? "),
                  MaterialButton(
                    padding: EdgeInsets.zero,
                    minWidth: 0,
                    height: 0,
                    onPressed: () => Get.offAll(() => LoginPage()),
                    child: Text(
                      "Login",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: blueColor, fontSize: 14),
                    ),
                  )
                ],
              ),
              hSpacingMedium,

              Padding(
                padding: sPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: ReDivider()),
                    wContainerSpacing,
                    Text("Or Sign up with"),
                    wContainerSpacing,
                    Flexible(child: ReDivider()),
                  ],
                ),
              ),
              // Google && FaceBook logo..........................................
              hSpacingMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: roundBorder,
                      border: Border.all(
                          width: 1,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    child: SizedBox(
                        height: 25, width: 25, child: Image.asset(googleLogo)),
                  ),
                  wSpacingSmall,
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: roundBorder,
                      border: Border.all(
                          width: 1,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    child: SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset(faceBookLogo)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
