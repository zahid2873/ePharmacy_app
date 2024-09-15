import 'package:flutter/material.dart';

class CostingItem extends StatelessWidget {
  const CostingItem(
      {super.key,
      this.titleTextStyle,
      this.title,
      this.priceTextStyle,
      this.price});
  final TextStyle? titleTextStyle;
  final String? title;
  final TextStyle? priceTextStyle;
  final String? price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title ?? "Subtotal",
            style: titleTextStyle ??
                const TextStyle(fontSize: 14, color: Colors.black),
          ),
          Text(
            price ?? "\$235",
            style: priceTextStyle ??
                const TextStyle(fontSize: 14, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
