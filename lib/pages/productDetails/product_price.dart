import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key, this.discount, this.price, this.currency});
  final int? discount;
  final double? price;
  final String? currency;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        discount != null
            ? Container(
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "$discount%",
                  style: const TextStyle(fontSize: 10, color: Colors.black),
                ),
              )
            : const SizedBox.shrink(),
        discount != null ? const SizedBox(width: 10) : const SizedBox.shrink(),
        Text(
          "${price ?? "\$122.6 - \$334"}",
          style: const TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w800),
        )
      ],
    );
  }
}
