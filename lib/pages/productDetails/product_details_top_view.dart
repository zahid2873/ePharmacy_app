import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/home/homeTopView/circular_container.dart';
import 'package:e_pharmacy/pages/home/homeTopView/curve_edge.dart';
import 'package:e_pharmacy/pages/productDetails/product_image_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsTopView extends StatelessWidget {
  const ProductDetailsTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurveEdge(),
      child: Container(
        color: Colors.grey.withOpacity(.5),
        child: SizedBox(
          height: 500,
          child: Stack(
            children: [
              const Positioned(
                  top: -150, right: -250, child: CircularContainer()),
              const Positioned(top: 100, left: 300, child: CircularContainer()),
              Column(
                children: [
                  CustomAppBar(
                    leading: IconButton(
                        onPressed: () => GoRouter.of(context).pop(),
                        icon: const Icon(Icons.arrow_back)),
                    action: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: () => GoRouter.of(context).pop(),
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  const ProductImageCard()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
