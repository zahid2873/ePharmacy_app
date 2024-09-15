import 'package:e_pharmacy/pages/checkout/billing_address_widget.dart';
import 'package:e_pharmacy/pages/checkout/billing_amount_widget.dart';
import 'package:e_pharmacy/pages/checkout/billing_payment_widget.dart';
import 'package:flutter/material.dart';

class BillingWidget extends StatelessWidget {
  const BillingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: const Column(
        children: [
          BillingAmountWidget(),
          BillingPaymentWidget(),
          BillingAddressWidget(),
        ],
      ),
    );
  }
}
