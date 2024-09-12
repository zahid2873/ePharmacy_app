import 'package:e_pharmacy/pages/productDetails/bottom_add_to_cart_widget.dart';
import 'package:e_pharmacy/pages/productDetails/product_details_bottom_view.dart';
import 'package:e_pharmacy/pages/productDetails/product_details_top_view.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomAddToCartWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductDetailsTopView(),
            ProductDetailsBottomView(),
          ],
        ),
      ),
    );
  }
}
