import 'package:flutter/material.dart';

class OrderInfoWidget extends StatelessWidget {
  const OrderInfoWidget(
      {super.key,
      this.icon,
      this.title,
      this.value,
      this.titleTextStyle,
      this.valueTextStyle});
  final Icon? icon;
  final String? title;
  final String? value;
  final TextStyle? titleTextStyle;
  final TextStyle? valueTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon ?? const Icon(Icons.shopping_cart, size: 20),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? "",
              style: titleTextStyle ??
                  const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(
              value ?? "",
              style: valueTextStyle ??
                  const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
