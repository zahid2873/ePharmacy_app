import 'package:e_pharmacy/common/animated_button.dart';
import 'package:e_pharmacy/common/custom_textfiled.dart';
import 'package:e_pharmacy/pages/home/homeTopView/circular_container.dart';
import 'package:flutter/material.dart';

class PromoCardWidget extends StatelessWidget {
  const PromoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.all(4),
      height: 60,
      width: double.infinity,
      border: Border.all(color: Colors.grey),
      radius: 8,
      child: Row(
        children: [
          const Expanded(
            flex: 3,
            child: CustomTextField(
              maxLine: 1,
              hintText: "Have a promo code? Enter here.",
              fillColor: Colors.transparent,
            ),
          ),
          Expanded(
            flex: 1,
            child: AnimatedButton(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue,
                ),
                child: const Text(
                  "Apply",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
