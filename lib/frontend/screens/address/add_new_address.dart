import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


import '../../ReUsable Widgets/button.dart';
import '../../ReUsable Widgets/login/form_text_f.dart';
import '../../ReUsable Widgets/re_appbar.dart';
import '../../constants/colors.dart';
import '../../constants/spacing.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /// AppBar
      appBar: ReAppbar(
        isStack: false,
        widget: GestureDetector(
            onTap: () => Get.back(), child: Icon(Icons.arrow_back_ios)),
        widget1: Text(
          "Add New Addresses",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      /// Form Field Column
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: key,
                child: Padding(
                  padding: sPadding,
                  child: Column(
                    children: [
                      hSpacingMedium,
                      FormTextF(

                        prefixIcon: Icon(Iconsax.user),
                        text: "Name",
                      ),
                      hSpacingSmall,
                      FormTextF(

                        prefixIcon: Icon(Iconsax.call),
                        text: "Phone number",
                      ),
                      hSpacingSmall,
                      Row(
                        children: [
                          Expanded(
                              child: FormTextF(

                            prefixIcon: Icon(Iconsax.building_31),
                            text: "Street",
                          )),
                          wSpacingSmall,
                          Expanded(
                              child: FormTextF(

                            prefixIcon: Icon(Iconsax.code),
                            text: "Postal code",
                          )),
                        ],
                      ),
                      hSpacingSmall,
                      Row(
                        children: [
                          Expanded(
                              child: FormTextF(

                            prefixIcon: Icon(Iconsax.building),
                            text: "City",
                          )),
                          wSpacingSmall,
                          Expanded(
                              child: FormTextF(

                            prefixIcon: Icon(Iconsax.activity),
                            text: "State",
                          )),
                        ],
                      ),
                      hSpacingSmall,
                      FormTextF(

                        prefixIcon: Icon(Iconsax.global),
                        text: "Country",
                      ),

                      /// Save Button
                      hSpacingMedium,
                      Material(
                        borderRadius: cBorderRadius,
                        color: Color(0xff2962FF),
                        child: Button(
                          bgColor: Colors.transparent,
                          child: Text(
                            "Save",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: whiteColor),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            hSpacingLarge
          ],
        ),
      ),
    );
  }
}
