import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../ReUsable Widgets/sign_in_widget.dart';
import '../constants/colors.dart';
import '../constants/spacing.dart';
import '../constants/strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: oPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                wLogo,
                height: 100,
                width: imageWidthLarge,
                color: Theme.of(context).colorScheme.primary,
              ),
              hSpacingMedium,
              Text(
                "Welcome back",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              hSpacingSmall,
              Text(
                "Discover Limitless Choices and Unmatched Convenience",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              hSpacingMedium,
              Form(
                  child: Column(
                    children: [
                      // ............................Email............................//
                      TextFormField(
                        style: Theme.of(context).textTheme.headlineSmall,

                        decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderRadius: cBorderRadius),
                          labelText: "Email",
                          labelStyle: Theme.of(context).textTheme.titleSmall,
                          prefixIcon: Icon(Iconsax.direct_right,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                      hSpacingSmall,

                      //...........................Password............................//
                      TextFormField(

                          style: Theme.of(context).textTheme.headlineSmall,
                          obscureText: true,
                          decoration: InputDecoration(
                              labelStyle:
                                  Theme.of(context).textTheme.titleSmall,
                              labelText: "Password",
                              // labelStyle: Theme.of(context).textTheme.titleSmall,
                              prefixIcon: Icon(Iconsax.password_check,
                                  color: Theme.of(context).colorScheme.primary),
                              suffixIcon: Icon(
                                 Iconsax.eye
                                     ,
                                  color:
                                      Theme.of(context).colorScheme.primary),
                              // hintText: "Password",
                              // hintStyle: Theme.of(context).textTheme.titleSmall,
                              border: OutlineInputBorder(
                                  borderRadius: cBorderRadius)),
                        ),

                      hSpacingSmall,

                      //..................Remember Me && Forget Password...............//
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: Checkbox(
                                          activeColor: blueColor,
                                          checkColor: whiteColor,
                                          value:
true,                                          onChanged: (value) {

                                          }),
                                    ),
                                SizedBox(width: 7),
                                Text(
                                  "Remember Me",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: GestureDetector(
                            onTap: () => Get.toNamed("/ForgetPassword"),
                            child: Text(
                              "Forget Password?",
                              style: Theme.of(context).textTheme.titleSmall,
                              textAlign: TextAlign.end,
                            ),
                          ))
                        ],
                      ),
                      hSpacingMedium,

                      //..........................Sign in..............................//
                      GestureDetector(
                        onTap:()=>Get.toNamed("/BottomNavBar"),
                        child: Container(
                          padding: aPadding,
                          decoration: BoxDecoration(
                            borderRadius: cBorderRadius,
                            color: blueColor,
                          ),
                          child: Center(
                            child: Text(
                              "Sign in",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: whiteColor),
                            ),
                          ),
                        ),
                      ),
                      hSpacingSmall,

                      //..........................Create Account........................//
                      GestureDetector(
                        onTap: () {
                          Get.toNamed( "/SignUpPage");
                        },
                        child: Container(
                          padding: aPadding,
                          decoration: BoxDecoration(
                              borderRadius: cBorderRadius,
                              border: Border.all(
                                  width: 0.7,
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                          child: Center(
                            child: Text("Create account",
                                style: Theme.of(context).textTheme.titleMedium),
                          ),
                        ),
                      )
                    ],
                  )),
              hSpacingMedium,

              //.......................... OrSign in..............................//
              Row(
                children: [
                  Flexible(
                      child: Divider(
                    indent: 40,
                    endIndent: 10,
                    thickness: 0.5,
                    color: Theme.of(context).colorScheme.primary,
                  )),
                  Text("Or Sign in With",
                      style: Theme.of(context).textTheme.titleSmall),
                  Flexible(
                      child: Divider(
                    indent: 10,
                    endIndent: 40,
                    thickness: 0.5,
                    color: Theme.of(context).colorScheme.primary,
                  ))
                ],
              ),
              hSpacingMedium,

              //........................... Sign in With Google || Facebook ............................//

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInWidget(
                    imageString: googleLogo,
                  ),
                  wSpacingSmall,
                  SignInWidget(imageString: faceBookLogo)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
