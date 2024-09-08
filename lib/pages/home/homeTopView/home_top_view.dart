import 'package:e_pharmacy/pages/home/homeTopView/app_bar_widget.dart';
import 'package:e_pharmacy/pages/home/homeTopView/category_widget.dart';
import 'package:e_pharmacy/pages/home/homeTopView/circular_container.dart';
import 'package:e_pharmacy/pages/home/homeTopView/curve_edge.dart';
import 'package:e_pharmacy/pages/home/homeTopView/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeTopView extends ConsumerWidget {
  const HomeTopView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipPath(
      clipper: CurveEdge(),
      child: Container(
        color: Colors.blue[700],
        child: const SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: CircularContainer()),
              Positioned(top: 100, left: 300, child: CircularContainer()),
              Column(
                children: [
                  AppBarWidget(),
                  SearchBarWidget(),
                  CategoryWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
