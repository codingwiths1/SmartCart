import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get/get_core/src/get_main.dart";
import "package:iconsax/iconsax.dart";

import "../../ReUsable Widgets/button.dart";
import "../../constants/colors.dart";
import "../../constants/spacing.dart";

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: sPadding,
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: dHorizontal * 4),

                //........................... Text Write_Ups ............................//

                Text("Forget Password",
                    style: Theme.of(context).textTheme.headlineMedium),
                hSpacingSmall,
                Text(
                    "Don't worry, Sometimes people can forget too, Enter your email and we will send you a password rest link",
                    style: Theme.of(context).textTheme.titleSmall),
                hSpacingLarge,

                //........................... Input Your Email ............................//
                Form(
                  child: TextFormField(

                    style: Theme.of(context).textTheme.headlineSmall,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right,
                            color: Theme.of(context).colorScheme.primary),
                        labelText: "E-Mail",
                        labelStyle: Theme.of(context).textTheme.titleSmall,
                        // hintText: "E-Mail",
                        // hintStyle: Theme.of(context).textTheme.titleSmall,
                        border:
                            OutlineInputBorder(borderRadius: cBorderRadius)),
                  ),
                ),
                hSpacingMedium,

                //........................... Summit Button ............................//
                InkWell(onTap: ()=>Get.toNamed("/PasswordEmailSent"),
                  child: Button(
                      child: Text(
                    "Summit",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: whiteColor),
                  )),
                )
              ],
            ),
          ),

          //........................... Clear Icon ............................//
          Positioned(
              top: dVertical * 4,
              right: dVertical,
              child: GestureDetector(
                  onTap: () {
                    Navigator.maybePop(context);
                  },
                  child: Icon(CupertinoIcons.clear)))
        ]),
      ),
    );
  }
}
