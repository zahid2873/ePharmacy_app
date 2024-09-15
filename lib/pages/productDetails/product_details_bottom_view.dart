import 'package:e_pharmacy/common/read_more_text_widget.dart';
import 'package:e_pharmacy/common/title_widget.dart';
import 'package:e_pharmacy/pages/cart/checkout_button.dart';
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
      child: Column(
        children: [
          const ProductRatingWidget(),
          const ProductPrice(
            discount: 70,
          ),
          const ProductInfo(),
          const ProductVariation(),
          const CheckoutButton(),
          const SizedBox(height: 20),
          const TitleWidget(
            title: "Description",
            isEnableButton: false,
          ),
          ReadMoreTextWidget(text: productDescription),
          const ReviewWidget(),
        ],
      ),
    );
  }
}

// rough
String productDescription = '''
The radiance lives on in the Nike Air Force 1 '07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine. A subtle platform gives you just the right amount of height.
The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.
''';
