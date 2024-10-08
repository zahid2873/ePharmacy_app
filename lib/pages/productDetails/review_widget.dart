import 'package:e_pharmacy/common/title_widget.dart';
import 'package:e_pharmacy/pages/profile/update_profile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitleWidget(title: "Reviews(104)", isEnableButton: false),
            IconButton(
              onPressed: ()=>GoRouter.of(context).pushNamed('review'),
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
