import 'package:e_pharmacy/pages/home/homeBottomView/productCard/product_card_vertical.dart';
import 'package:flutter/material.dart';

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 10),
      scrollDirection: Axis.vertical,
      itemCount: 8,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
        mainAxisExtent: 200,
      ),
      itemBuilder: (index, _) {
        return const ProductCardVertical();
      },
    );
  }
}
