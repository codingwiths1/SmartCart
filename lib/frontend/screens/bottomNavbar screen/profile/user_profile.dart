import 'package:ecommerce_app_thumbnail/frontend/screens/bottomNavbar%20screen/profile/re_auth_delete_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/colors.dart';
import '../../../constants/spacing.dart';
import '../../../reusable widgets/profile page/re_divider.dart';
import '../../../reusable widgets/profile page/user_info_row.dart';
import '../../../reusable widgets/re_appbar.dart';
import 'edit_username.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //........................... AppBar ............................//
        ReAppbar(
          isStack: false,
          widget: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios)),
          widget1: Text(
            "Profile",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 20),
          ),
        ),
        hSpacingMedium,
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              //........................... User avatar ............................//

              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: roundBorder,
                      border: Border.all(
                          width: 2,
                          color: Theme.of(context).colorScheme.primary)),
                  child: Icon(
                    Iconsax.user,
                    size: 40,
                  )),
              SizedBox(height: 20),

              //........................... Change profile picture ............................//

              // Text(
              //   "Change profile picture",
              //   style: Theme.of(context)
              //       .textTheme
              //       .titleSmall!
              //       .copyWith(fontWeight: FontWeight.w500),
              // )
            ],
          ),
        ),
        hSpacingMedium,

        //........................... Divider ............................//
        Padding(
          padding: sPadding,
          child: ReDivider(),
        ),

        //........................... Items Column ............................//
        hSpacingSmall,
        Padding(
          padding: sPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile Information",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              hSpacingMedium,

              //........................... UserInfoRows ............................//
              UserInfoRow(
                smallText: 'Name',
                bigText: "Benjamin",
                child: SizedBox.shrink(),
              ),

              hContainerSpacing,
              UserInfoRow(
                smallText: 'Username',
                bigText: "benjamin_user",
                child: InkWell(
                    onTap: () => Get.to(() => EditUsername()),
                    borderRadius: roundBorder,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(Iconsax.arrow_right_34),
                    )),
              ),

              hSpacingMedium,

              //........................... Divider ............................//
              ReDivider(),

              //........................... UserInfoRows ............................//
              hSpacingSmall,
              Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profile Information",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                  hSpacingMedium,
                  UserInfoRow(
                    smallText: 'User ID',
                    bigText: "benjamin.uid",
                    child: Icon(Iconsax.copy, size: 19),
                  ),
                  hContainerSpacing,
                  UserInfoRow(
                    smallText: 'E=mail',
                    bigText: "benjamin@gmail.com",
                  ),
                  hContainerSpacing,
                  UserInfoRow(
                    smallText: 'Phone Number',
                    bigText: "+352 36263663726",
                  ),
                  hContainerSpacing,
                  UserInfoRow(
                    smallText: 'Gender',
                    bigText: "Male",
                  ),
                  hContainerSpacing,
                  UserInfoRow(
                    smallText: 'DOB',
                    bigText: "14-May-2999",
                  ),
                  hSpacingMedium,

                  //........................... Divider ............................//
                  ReDivider(),
                  hSpacingSmall,

                  // ShowDialog.................................................
                  GestureDetector(
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: cBorderRadius),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Delete Account",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                  ),
                                ),
                                hSpacingSmall,
                                Text(
                                  textAlign: TextAlign.center,
                                  "Are you sure you want to delete your account permanently? This action is irreversible as all your data will be wiped",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                                hSpacingSmall,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MaterialButton(
                                      minWidth: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: cBorderRadius),
                                      onPressed: () => Navigator.pop(context),
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                      ),
                                    ),
                                    // wSpacingMedium,
                                    MaterialButton(
                                      minWidth: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: cBorderRadius),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Get.to(() => ReAuthDeleteUser());
                                      },
                                      child: Text(
                                        "Delete",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: redColor),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                    child: Center(
                      child: Text("Close Account",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: redColor)),
                    ),
                  )
                ],
              ))
            ],
          ),
        )
      ]),
    ));
  }
}
