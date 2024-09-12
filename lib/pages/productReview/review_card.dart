import 'package:e_pharmacy/common/read_more_text_widget.dart';
import 'package:e_pharmacy/pages/productReview/review_replay_card.dart';
import 'package:e_pharmacy/pages/productReview/total_rating_bar_indicator.dart';
import 'package:e_pharmacy/pages/profile/user_profile_widget.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        UserProfileWidget(
          padding: const EdgeInsets.all(0),
          textStyle: const TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          isEmailShow: false,
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              size: 16,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            TotalRatingBarIndicator(size: 16, rating: 4.5),
            SizedBox(width: 10),
            Text(
              "12 Sept, 2024",
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const ReadMoreTextWidget(),
        const SizedBox(height: 20),
        const ReviewReplayCard(),
        
      ],
    );
  }
}
