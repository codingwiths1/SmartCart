import 'package:flutter/material.dart';

import '../../ReUsable Widgets/ratings/rating_progress_bar.dart';
import '../../ReUsable Widgets/ratings/rating_star.dart';
import '../../constants/spacing.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
    this.showRatingStars = false,
    this.ratings = 5.0,
  });
  final bool showRatingStars;
  final double ratings;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: showRatingStars
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "4.7",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    RatingStars(ratings: ratings)
                  ],
                )
              : Text(
                  "4.7",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
        ),
        wSpacingSmall,
        Expanded(
          flex: 8,
          child: Column(
            children: [
              RatingProgressBar(number: '5', barValue: 1.0),
              RatingProgressBar(number: '4', barValue: 0.8),
              RatingProgressBar(number: '3', barValue: 0.6),
              RatingProgressBar(number: '2', barValue: 0.4),
              RatingProgressBar(number: '1', barValue: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}
