import 'package:e_pharmacy/common/animated_button.dart';
import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/cart/cart_item_widget.dart';
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const CartItemWidget(
              color: Colors.green,
              size: "EU 34",
            ),
            const CartItemWidget(),
            const CartItemWidget(),
            const CartItemWidget(),
            const CartItemWidget(),
            const CartItemWidget(),
            const CartItemWidget(),
            const CartItemWidget(),
            const CartItemWidget(),
            const CartItemWidget(),
            const CartItemWidget(),
            const SizedBox(height: 20),
            AnimatedButton(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
                child: const Text(
                  "Save",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
