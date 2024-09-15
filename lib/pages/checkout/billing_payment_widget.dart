import 'package:e_pharmacy/common/title_widget.dart';
import 'package:e_pharmacy/pages/home/homeTopView/circular_container.dart';
import 'package:flutter/material.dart';

class BillingPaymentWidget extends StatelessWidget {
  const BillingPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleWidget(
          title: "Payment",
          isEnableButton: true,
          buttonTitle: "Change",
        ),
        CircularContainer(
          height: 60,
          width: double.infinity,
          child: Row(
            children: [
              Icon(
                Icons.paypal,
                size: 16,
              ),
              SizedBox(width: 20),
              Text(
                "Paypal",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
