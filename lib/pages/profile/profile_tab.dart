import 'package:e_pharmacy/pages/profile/profile_bottom_view.dart';
import 'package:e_pharmacy/pages/profile/profile_top_view.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileTopView(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ProfileBottomView(),
            ),
          ],
        ),
      ),
    );
  }
}
