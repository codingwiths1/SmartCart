import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../ReUsable Widgets/Profile Page/re_list_tile.dart';
import '../../../ReUsable Widgets/re_appbar.dart';
import '../../../ReUsable Widgets/row_text.dart';
import '../../../constants/colors.dart';
import '../../../constants/spacing.dart';
import '../../../reusable widgets/homepage/homepage_header_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //........................... HomePageHeaderContainer ............................//
          HomePageHeaderContainer(
            height: 220,
            widget: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: left),
                  child: ReAppbar(
                    widget: Text(
                      "Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: whiteColor),
                    ),
                    isStack: false,
                  ),
                ),
                hSpacingMedium,

                //........................... Adolf Hitler ListTile ............................//
                ReListTile(
                  fontSize: 22,
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: roundBorder,
                        border: Border.all(width: 2, color: whiteColor)),
                    child: Icon(
                      Iconsax.user,
                      color: whiteColor,
                    ),
                  ),
                  titleString: "Benjamin",
                  subTitleString: "benjamin@gmail.com",
                  color: whiteColor,
                  trailing: GestureDetector(
                    onTap: () {
                      Get.toNamed("/UserProfile");
                    },
                    child: Icon(
                      Iconsax.edit,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),

          //........................... Account Settings ............................//
          RowText(
            boldText: "Account Settings",
            showSmallText: false,
          ),
          hSpacingMedium,
          ReListTile(
            onTap: () => Get.toNamed("/Address"),
            showTrailing: false,
            leading: Icon(
              Iconsax.safe_home,
              size: 30,
              color: blueColor,
            ),
            titleString: "My Address",
            subTitleString: "Set shopping delivery address",
            color: Theme.of(context).colorScheme.primary,
          ),
          ReListTile(
            onTap: () => Get.toNamed("/CartScreen"),
            showTrailing: false,
            leading: Icon(
              Iconsax.shopping_cart,
              size: 30,
              color: blueColor,
            ),
            titleString: "My Cart",
            subTitleString: "Add,remove products and move to checkout",
            color: Theme.of(context).colorScheme.primary,
          ),
          ReListTile(
            onTap: () => Get.toNamed("/MyOrder"),
            showTrailing: false,
            leading: Icon(
              Iconsax.box,
              size: 30,
              color: blueColor,
            ),
            titleString: "My Orders",
            subTitleString: "in-progress and completed orders",
            color: Theme.of(context).colorScheme.primary,
          ),
          ReListTile(
            showTrailing: false,
            leading: Icon(
              Iconsax.bank,
              size: 30,
              color: blueColor,
            ),
            titleString: "Bank Account",
            subTitleString: "Withdraw balance to valid Bank accounts",
            color: Theme.of(context).colorScheme.primary,
          ),
          ReListTile(
            showTrailing: false,
            leading: Icon(
              Iconsax.discount_shape,
              size: 30,
              color: blueColor,
            ),
            titleString: "My Coupons",
            subTitleString: "List of all the Discounted Coupons",
            color: Theme.of(context).colorScheme.primary,
          ),
          ReListTile(
            showTrailing: false,
            leading: Icon(
              Iconsax.notification,
              size: 30,
              color: blueColor,
            ),
            titleString: "Notifications",
            subTitleString: "See all notification messages",
            color: Theme.of(context).colorScheme.primary,
          ),
          ReListTile(
            showTrailing: false,
            leading: Icon(
              Iconsax.security_card,
              size: 30,
              color: blueColor,
            ),
            titleString: "Account Privacy",
            subTitleString: "Manage Data usage and connected Accounts",
            color: Theme.of(context).colorScheme.primary,
          ),
          hSpacingMedium,

          //........................... App Settings ............................//

          RowText(boldText: "App Settings", showSmallText: false),
          hSpacingSmall,
          ReListTile(
            showTrailing: false,
            leading: Icon(
              Iconsax.document_upload,
              size: 30,
              color: blueColor,
            ),
            titleString: "Load Data",
            subTitleString: "Upload Data to your Cloud Firebase",
            color: Theme.of(context).colorScheme.primary,
          ),
          ReListTile(
            showTrailing: true,
            trailing: Switch(
                activeColor: purpleColor, value: true, onChanged: (value) {}),
            leading: Icon(
              Iconsax.location,
              size: 30,
              color: blueColor,
            ),
            titleString: "Geolocation",
            subTitleString: "Set recommendations based on location",
            color: Theme.of(context).colorScheme.primary,
          ),
          ReListTile(
            showTrailing: true,
            trailing: Switch(
                activeColor: purpleColor, value: false, onChanged: (value) {}),
            leading: Icon(
              Iconsax.security_user,
              size: 30,
              color: blueColor,
            ),
            titleString: "Safe Mode",
            subTitleString: "Search results in safe mode for all ages",
            color: Theme.of(context).colorScheme.primary,
          ),
          ReListTile(
            showTrailing: true,
            trailing: Switch(
                activeColor: purpleColor, value: false, onChanged: (value) {}),
            leading: Icon(
              Iconsax.image,
              size: 30,
              color: blueColor,
            ),
            titleString: "HD Images Quality",
            subTitleString: "Set image quality to be seen",
            color: Theme.of(context).colorScheme.primary,
          ),
          hSpacingMedium,

          //........................... LogOut ............................//
          Divider(
            thickness: 0.2,
            color: Theme.of(context).colorScheme.primary,
          ),
          hSpacingSmall,

          Center(
              child: Text(
                "Logout",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w700, color: redColor),
              )),
          hSpacingLarge,
        ],
      )),
    );
  }
}
