import 'package:flutter/material.dart';
import 'package:mobile_app/utilities/index.dart';

//TODO Make rating actually Work

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
  CardRating({required this.starsrating});
  final String starsrating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: stars,
    );
  }
}
