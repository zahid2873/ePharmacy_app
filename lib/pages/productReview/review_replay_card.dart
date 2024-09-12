import 'package:e_pharmacy/common/read_more_text_widget.dart';
import 'package:e_pharmacy/pages/profile/user_profile_widget.dart';
import 'package:flutter/material.dart';

class ReviewReplayCard extends StatelessWidget {
  const ReviewReplayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          UserProfileWidget(
            padding: EdgeInsets.all(0),
            textStyle: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
            isEmailShow: false,
            trailing: Text(
              "13 Sept, 2024",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          ReadMoreTextWidget(),
        ],
      ),
    );
  }
}
