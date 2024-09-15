import 'package:e_pharmacy/pages/checkout/costing_item.dart';
import 'package:e_pharmacy/pages/profile/update_profile.dart';
import 'package:flutter/material.dart';

class BillingAmountWidget extends StatelessWidget {
  const BillingAmountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CostingItem(title: "Subtotal", price: "\$245"),
        CostingItem(title: "Shipping Fee", price: "\$5"),
        CostingItem(title: "Tax Fee", price: "\$5"),
        CostingItem(title: "Order Total", price: "\$255.00"),
        DividerWidget(),
      ],
    );
  }
}
