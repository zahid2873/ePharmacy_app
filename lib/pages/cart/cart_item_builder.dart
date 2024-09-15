import 'package:e_pharmacy/pages/cart/cart_item_widget.dart';
import 'package:flutter/material.dart';

class CartItemBuilder extends StatelessWidget {
  const CartItemBuilder({
    super.key,
    this.isShowButton = true,
    this.itemCount,
  });
  final bool isShowButton;
  final int? itemCount;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemCount ?? 8,
        itemBuilder: (context, index) {
          return CartItemWidget(
            isShowButton: isShowButton,
            
          );
        });
  }
}
