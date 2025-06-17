import 'package:ecommerce_app_thumbnail/frontend/constants/colors.dart';
import 'package:ecommerce_app_thumbnail/frontend/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/boarding_controller.dart';
import '../constants/spacing.dart';
import '../reusable widgets/button.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gController = Get.put(BoardingController());

    return Scaffold(
      body: Padding(
        padding: sPadding,

        /// Stack
        child: Stack(children: [
          /// PageView
          PageView(
            onPageChanged: gController.currentPage,
            controller: gController.controller,
            scrollDirection: Axis.horizontal,
            children: [
              /// Page1
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Page1 Image
                  Image.asset(
                    onBoarding1,
                    fit: BoxFit.cover,
                  ),

                  /// Page1 Text
                  hSpacingMedium,
                  Text(
                    "Choose Your Product",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  hSpacingSmall,
                  Text(
                    "Welcome to the world of limitless choices - Your perfect product Awaits",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  )
                ],
              ),

              /// Page2
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Page2 Image
                  Image.asset(
                    onBoarding2,
                    fit: BoxFit.cover,
                  ),

                  /// Page2 Text
                  hSpacingMedium,
                  Text(
                    "Select Payment Method",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  hSpacingSmall,
                  Text(
                    "For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority ",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  )
                ],
              ),

              /// Page3
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Page3 Image
                  Image.asset(
                    onBoarding3,
                    fit: BoxFit.cover,
                  ),

                  /// Page3 Text
                  hSpacingMedium,
                  Text(
                    "Deliver At Your Door Step",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  hSpacingSmall,
                  Text(
                    "From Our Doorstep To Yours - Swift,Secure, and Contactless Delivery",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ],
          ),

          /// Removing The Skip Button Based On the Current Index
          Obx(
            () => gController.currentIndex.value == 2
                ? SizedBox()
                : Positioned(
                    top: 40,
                    right: 5,
                    child: GestureDetector(
                      onTap: gController.skipPages,
                      child: Text(
                        "Skip",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    )),
          ),

          /// Smooth Page Indicator
          Positioned(
              bottom: 40,
              left: 5,
              child: SmoothPageIndicator(
                onDotClicked: gController.dotIndex,
                controller: gController.controller,
                count: 3,
                effect: WormEffect(dotWidth: 13, dotHeight: 13),
              )),

          /// Removing The Next Button Based On the Current Index && Navigating To The Login Screen
          Obx(
            () => gController.currentIndex.value == 2
                ? Positioned(
                    right: 5,
                    bottom: 40,
                    child: GestureDetector(
                      onTap: () {
                        var storage = GetStorage();
                        storage.write("isFirstTime", false);
                        Get.toNamed("/SignUpPage");
                      },
                      child: Text(
                        "Done",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  )
                : Positioned(
                    right: 5,
                    bottom: 30,
                    child: GestureDetector(
                        onTap: gController.nextPage,
                        child: ClipOval(
                          child: Button(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: whiteColor,
                              size: 17,
                            ),
                          ),
                        ))),
          )
        ]),
      ),
    );
  }
}
