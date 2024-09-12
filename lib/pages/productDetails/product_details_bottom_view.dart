import 'package:e_pharmacy/pages/productDetails/checkout_button.dart';
import 'package:e_pharmacy/pages/productDetails/product_description.dart';
import 'package:e_pharmacy/pages/productDetails/product_info.dart';
import 'package:e_pharmacy/pages/productDetails/product_price.dart';
import 'package:e_pharmacy/pages/productDetails/product_rating_widget.dart';
import 'package:e_pharmacy/pages/productDetails/product_variation.dart';
import 'package:e_pharmacy/pages/productDetails/review_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsBottomView extends StatelessWidget {
  const ProductDetailsBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 40),
      child: Column(
        children: [
          ProductRatingWidget(),
          ProductPrice(
            discount: 70,
          ),
          ProductInfo(),
          ProductVariation(),
          CheckoutButton(),
          ProductDescription(),
          ReviewWidget(),
        ],
      ),
    );
  }
}
