import 'package:ecommerce_app_thumbnail/frontend/constants/colors.dart';
import 'package:ecommerce_app_thumbnail/frontend/constants/spacing.dart';
import 'package:ecommerce_app_thumbnail/frontend/reusable%20widgets/order/bg_container.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../ReUsable Widgets/re_appbar.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: ReAppbar(
          showBackButton: true,
          isStack: false,
          widget1: Text(
            "My Orders",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
      body: Padding(
        padding: sPadding,
        child: Column(
          children: [
            hSpacingMedium,
            BgContainer(
                child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.ship),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Processing",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: blueColor),
                              ),
                              Text(
                                "01 Sep 2023",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
                hSpacingMedium,
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.tag),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order"),
                              Text(
                                "CWT0025",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.calendar),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shipping Date"),
                              Text(
                                "09 Sep 2023",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
            SizedBox(
              height: 20,
            ),
            BgContainer(
                child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.ship),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Processing",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: blueColor),
                              ),
                              Text(
                                "01 Sep 2023",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
                hSpacingMedium,
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.tag),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order"),
                              Text(
                                "CWT0025",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.calendar),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shipping Date"),
                              Text(
                                "09 Sep 2023",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
            SizedBox(
              height: 20,
            ),
            BgContainer(
                child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.ship),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Processing",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: blueColor),
                              ),
                              Text(
                                "01 Sep 2023",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
                hSpacingMedium,
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.tag),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order"),
                              Text(
                                "CWT0025",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.calendar),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shipping Date"),
                              Text(
                                "09 Sep 2023",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
            SizedBox(
              height: 20,
            ),
            BgContainer(
                child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.ship),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Processing",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: blueColor),
                              ),
                              Text(
                                "01 Sep 2023",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
                hSpacingMedium,
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.tag),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order"),
                              Text(
                                "CWT0025",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Iconsax.calendar),
                          wSpacingSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shipping Date"),
                              Text(
                                "09 Sep 2023",
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
