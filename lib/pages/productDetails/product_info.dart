import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    this.productName,
    this.productDescription,
    this.isStock = true,
    this.brandName,
    this.logoUrl,
    this.isVerified = true,
    this.reviews,
  });
  final String? productName;
  final String? productDescription;
  final bool isStock;
  final String? brandName;
  final String? logoUrl;
  final bool isVerified;
  final List<String>? reviews;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productName ?? "Nike sports shoe",
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
        Row(
          children: [
            const Text(
              "Stock: ",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            isStock
                ? const Text(
                    "In Stock",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  )
                : const Text(
                    "Stock Out",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
          ],
        ),
        Row(
          children: [
            Image.network(
              "https://thumbs.dreamstime.com/b/web-192037117.jpg",
              height: 12,
              width: 12,
            ),
            Text(
              brandName ?? "Nike",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            const Icon(
              Icons.verified,
              color: Colors.blue,
              size: 10,
            )
          ],
        )
      ],
    );
  }
}
