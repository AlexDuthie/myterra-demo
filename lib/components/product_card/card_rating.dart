import 'package:flutter/material.dart';
import 'package:mobile_app/utilities/index.dart';

List<Icon> stars = [
  Icon(
    Icons.star,
    color: ratingStarColor,
    size: ratingStarSize,
  ),
  Icon(
    Icons.star,
    color: ratingStarColor,
    size: ratingStarSize,
  ),
  Icon(
    Icons.star,
    color: ratingStarColor,
    size: ratingStarSize,
  ),
  Icon(
    Icons.star_half,
    color: ratingStarColor,
    size: ratingStarSize,
  ),
  Icon(
    Icons.star_border_outlined,
    color: ratingStarColor,
    size: ratingStarSize,
  ),
];

class CardRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: stars,
    );
  }
}
