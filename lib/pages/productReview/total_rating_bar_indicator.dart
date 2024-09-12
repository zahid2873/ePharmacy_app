import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TotalRatingBarIndicator extends StatelessWidget {
  const TotalRatingBarIndicator(
      {super.key, this.size, this.iconColor, this.unratedColor, this.rating});
  final double? size;
  final Color? iconColor;
  final Color? unratedColor;
  final double? rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating??4.5,
      itemSize: size ?? 20,
      unratedColor: unratedColor ?? Colors.grey,
      itemBuilder: (context, index) {
        return Icon(
          Icons.star,
          color: iconColor ?? Colors.green,
        );
      },
    );
  }
}
