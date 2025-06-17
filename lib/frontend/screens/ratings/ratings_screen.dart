import 'package:ecommerce_app_thumbnail/frontend/screens/ratings/rating_card.dart';
import 'package:ecommerce_app_thumbnail/frontend/screens/ratings/rating_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ReUsable Widgets/ratings/rating_star.dart';
import '../../ReUsable Widgets/re_appbar.dart';
import '../../constants/spacing.dart';
import '../../constants/strings.dart';

class RatingsScreen extends StatelessWidget {
  const RatingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: ReAppbar(
        widget: GestureDetector(
            onTap: () => Get.back(), child: Icon(Icons.arrow_back_ios)),
        widget1: Text(
          "Reviews & Ratings",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        isStack: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: sPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              hSpacingMedium,
              Text(
                "Ratings and reviews are verified and are from people who use the same product as you",
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              /// Review Text Row
              hSpacingSmall,
              RatingRow(),

              /// Rating Stars
              RatingStars(
                ratings: 3.5,
              ),

              /// Amount of Ratings
              Text("12,111",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontFamily: "Poppins")),
              hSpacingMedium,

              /// Rating // Review && Seller Reply
              RatingCard(imageString: image1,),
              hSpacingMedium,
              RatingCard(imageString: image1,),
            ],
          ),
        ),
      ),
    );
  }
}

