import 'package:e_pharmacy/common/animated_button.dart';
import 'package:e_pharmacy/common/circular_icon.dart';
import 'package:flutter/material.dart';

class BottomAddToCartWidget extends StatelessWidget {
  const BottomAddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              CircularIcon(
                icon: Icon(
                  Icons.remove,
                  size: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "4",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(width: 10),
              CircularIcon(
                icon: Icon(
                  Icons.add,
                  size: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          AnimatedButton(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Add to Cart",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
