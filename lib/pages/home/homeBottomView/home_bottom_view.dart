import 'package:e_pharmacy/pages/home/homeBottomView/carousel/carousel_slider_widget.dart';
import 'package:e_pharmacy/pages/home/homeBottomView/popular_product_widget.dart';
import 'package:flutter/material.dart';

class HomeBottomView extends StatelessWidget {
  const HomeBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CarouselSliderWidget(),
        PopularProductWidget(),
      ],
    );
  }
}
