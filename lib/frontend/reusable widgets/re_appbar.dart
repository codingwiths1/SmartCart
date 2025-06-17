import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/spacing.dart';


class ReAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ReAppbar({
    super.key,
    this.widget = const SizedBox(),
    this.color1 = Colors.white,
    this.color2 = Colors.black,
    this.color3 = Colors.white,
    this.isStack = true,
    this.widget2 = const SizedBox(),
    this.widget1 = const SizedBox(),
    this.showBackButton = false,
  });
  final Widget widget;
  final Widget widget1;

  final Widget widget2;
  final Color color1;
  final Color color2;
  final Color color3;
  final bool isStack;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: appBar, left: left, right: right, bottom: 0),

      //........................... Store Text && Shopping Bag Icon Stack ............................//
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            showBackButton
                ? InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back_ios))
                : widget,
            SizedBox(width: 20),
            widget1,
          ],
        ),

        //........................... Shopping Bag Icon Stack ............................//
        isStack
            ? GestureDetector(
                onTap: () => Get.toNamed("/CartScreen"),
                child: Container(
                  color: Colors.transparent,
                  child: Stack(clipBehavior: Clip.none, children: [
                    Icon(Iconsax.shopping_bag, color: color1, size: 27),
                    Positioned(
                      right: -6,
                      top: -13,
                      child: Container(
                        clipBehavior: Clip.none,
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: color2,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Text(
                              "4",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(color: color3, fontSizeFactor: 0.7),
                            ),

                        ),
                      ),
                    )
                  ]),
                ),
              )
            : widget2
      ]),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}
