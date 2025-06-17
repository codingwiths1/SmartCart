import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../ReUsable Widgets/ratings/rating_star.dart';
import '../../constants/colors.dart';
import '../../constants/spacing.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({
    super.key, required this.imageString,
  });
final String imageString;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: ClipOval(child: Image.asset(imageString)),
                ),
                wContainerSpacing,
                Text("John Doe",
                    style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            Icon(Icons.more_vert_rounded)
          ],
        ),
        Row(
          children: [
            RatingStars(
              ratings: 4.5,
            ),
            wContainerSpacing,
            Text("01-Nov-2024", style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
        hSpacingSmall,
        ReadMoreText(
            style: Theme.of(context).textTheme.titleMedium,
            moreStyle: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: blueColor),
            lessStyle: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: blueColor),
            trimLines: 3,
            trimMode: TrimMode.Line,
            trimCollapsedText: "Read more",
            trimExpandedText: "Read less",
            "I recently tried [Product Name], and I’m impressed! The texture is lightweight and blends effortlessly into the skin, leaving a smooth, natural finish. It’s long-lasting and doesn’t feel heavy or cakey. The formula is gentle, making it great for sensitive skin. Plus, the packaging is sleek and travel-friendly. Overall, a fantastic product that delivers on its promises! ⭐⭐⭐⭐⭐..."),
        hSpacingSmall,
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: cBorderRadius, color: Colors.grey.shade200),
          child: Text(
            textAlign: TextAlign.start,
            "Thank you so much for your kind words and for sharing your experience with [Product Name]! 😊 We're thrilled to hear that you love the texture and lasting effect. Our goal is to provide high-quality products that enhance your beauty while feeling comfortable on your skin. If you ever need any recommendations or have any questions, feel free to reach out. We truly appreciate your support! 💕✨",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: blackColor),
          ),
        ),
      ],
    );
  }
}
