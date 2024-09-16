import 'package:e_pharmacy/common/title_widget.dart';
import 'package:e_pharmacy/pages/home/homeBottomView/productCard/product_card_horizontal.dart';
import 'package:flutter/material.dart';

class SubCategroyProduct extends StatelessWidget {
  const SubCategroyProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWidget(
          title: 'Sports Ball',
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
            itemCount: 4,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return const ProductCardHorizontal();
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          ),
        )
      ],
    );
  }
}
