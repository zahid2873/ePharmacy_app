import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/home/homeTopView/circular_container.dart';
import 'package:e_pharmacy/pages/home/homeTopView/curve_edge.dart';
import 'package:e_pharmacy/pages/profile/user_profile_widget.dart';
import 'package:flutter/material.dart';

class ProfileTopView extends StatelessWidget {
  const ProfileTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurveEdge(),
      child: Container(
        color: Colors.blue[700],
        child: const SizedBox(
          height: 200,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(height: 200, width: 200),
              ),
              Positioned(
                top: 100,
                left: 300,
                child: CircularContainer(height: 200, width: 200),
              ),
              Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      "Account",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  UserProfileWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
