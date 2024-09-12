import 'package:e_pharmacy/pages/productReview/linear_rating_widget.dart';
import 'package:e_pharmacy/pages/productReview/total_rating_bar_indicator.dart';
import 'package:flutter/material.dart';

class TotalRatingWidget extends StatelessWidget {
  const TotalRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
              flex: 3,
              child: Text(
                "4.5",
                style: TextStyle(color: Colors.black, fontSize: 60),
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  for (int i = 5; i > 0; i--)
                    LinearRatingWidget(rating: i, value: getValue(i)),
                ],
              ),
            ),
          ],
        ),
       const TotalRatingBarIndicator(),
        const SizedBox(height: 5),
        const Text(
          "1109",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        )
      ],
    );
  }

  double getValue(int index) {
    switch (index) {
      case 5:
        return 1.0;
      case 4:
        return 0.8;
      case 3:
        return 0.6;
      case 2:
        return 0.4;
      case 1:
        return 0.2;
    }
    return 0.2;
  }
}
