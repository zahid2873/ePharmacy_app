import 'package:e_pharmacy/common/title_widget.dart';
import 'package:e_pharmacy/pages/home/homeBottomView/productCard/product_grid_widget.dart';
import 'package:flutter/material.dart';

class PopularProductWidget extends StatelessWidget {
  const PopularProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(
            title: "Popular Product",
            onTap: () {},
          ),
          const ProductGridWidget(),
        ],
      ),
    );
  }
}
