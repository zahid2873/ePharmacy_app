import 'package:e_pharmacy/common/title_widget.dart';
import 'package:flutter/material.dart';

class BillingAddressWidget extends StatelessWidget {
  const BillingAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(
          title: "Shipping Address",
          isEnableButton: true,
          buttonTitle: "Change",
        ),
        Text(
          "Zahid Hasan",
          style: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          "01783864132",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        Text(
          "Shaymoli, Dhaka, Bangaladesh",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ],
    );
  }
}
