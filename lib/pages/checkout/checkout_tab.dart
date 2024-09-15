import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/cart/cart_item_builder.dart';
import 'package:e_pharmacy/pages/cart/checkout_button.dart';
import 'package:e_pharmacy/pages/checkout/billing_widget.dart';
import 'package:e_pharmacy/pages/checkout/promo_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckoutTab extends StatelessWidget {
  const CheckoutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Order Review",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            CartItemBuilder(
              isShowButton: false,
              itemCount: 3,
            ),
            PromoCardWidget(),
            BillingWidget()
          ],
        ),
      ),
      bottomNavigationBar: CheckoutButton(
        onTap: () => GoRouter.of(context).pushNamed('checkout'),
      ),
    );
  }
}
