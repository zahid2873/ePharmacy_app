import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/cart/cart_item_builder.dart';
import 'package:e_pharmacy/pages/cart/cart_item_widget.dart';
import 'package:e_pharmacy/pages/cart/checkout_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartTab extends StatelessWidget {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Cart",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            CartItemWidget(
              color: Colors.green,
              size: "EU 34",
            ),
            CartItemBuilder(),
            SizedBox(height: 20),
            SizedBox(height: 60),
          ],
        ),
      ),
      bottomNavigationBar:  CheckoutButton(onTap: ()=>GoRouter.of(context).pushNamed('checkout')),
    );
  }
}
