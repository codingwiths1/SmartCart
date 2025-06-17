import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constants/colors.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
    this.ratings = 5.0,
  });
  final double ratings;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: ratings,
        itemSize: 20,
        unratedColor: choiceColors,
        itemBuilder: (_, __) => Icon(
          Icons.star,
          color: Colors.amber,
        ));
  }
}
