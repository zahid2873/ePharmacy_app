import 'package:e_pharmacy/common/title_widget.dart';
import 'package:e_pharmacy/pages/store/feature_product_item.dart';
import 'package:flutter/material.dart';

class FeaturedProductWidget extends StatelessWidget {
  const FeaturedProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TitleWidget(
            onTap: () {},
            title: "Featured Brands",
          ),
        ),
        GridView.builder(
          padding: const EdgeInsets.only(top: 10),
          scrollDirection: Axis.vertical,
          itemCount: 8,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
            mainAxisExtent: 80,
          ),
          itemBuilder: (index, _) {
            return const FeaturedProductItem();
          },
        ),
      ],
    );
  }
}
