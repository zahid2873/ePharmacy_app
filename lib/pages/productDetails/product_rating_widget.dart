import 'package:flutter/material.dart';

class ProductRatingWidget extends StatelessWidget {
  const ProductRatingWidget({super.key, this.rating, this.numberOfRating});
  final double? rating;
  final int? numberOfRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 14,
        ),
        const SizedBox(width: 5),
        Text(
          "${rating ?? "5.0"} (${numberOfRating ?? "304"})",
          style: const TextStyle(color: Colors.black, fontSize: 14),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: 16,
              color: Colors.black,
            ))
      ],
    );
  }
}
