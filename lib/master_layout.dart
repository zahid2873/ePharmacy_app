import 'package:e_pharmacy/common/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MasterLayout extends StatelessWidget {
  const MasterLayout({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: child,
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

