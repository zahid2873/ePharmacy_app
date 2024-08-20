import 'package:e_pharmacy/common/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MasterLayout extends StatelessWidget {
  const MasterLayout({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
