import 'package:e_pharmacy/pages/home/homeBottomView/productCard/product_grid_widget.dart';
import 'package:flutter/material.dart';

class PopularProductWidget extends StatelessWidget {
  const PopularProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular Product",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          ProductGridWidget(),
        ],
      ),
    );
  }
}
