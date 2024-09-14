import 'package:e_pharmacy/common/circular_icon.dart';
import 'package:flutter/material.dart';

class CartAddRemoveWidget extends StatelessWidget {
  const CartAddRemoveWidget(
      {super.key,
      this.numberOfItem,
      this.addOnatp,
      this.removeOnatp,
      this.textColor});
  final int? numberOfItem;
  final VoidCallback? addOnatp;
  final VoidCallback? removeOnatp;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularIcon(
          onTap: removeOnatp ?? () {},
          backgroundColor: Colors.grey,
          icon: const Icon(
            Icons.remove,
            size: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          "${numberOfItem ?? "0"}",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor ?? Colors.white),
        ),
        const SizedBox(width: 10),
        CircularIcon(
          backgroundColor: Colors.blue,
          onTap: addOnatp ?? () {},
          icon: const Icon(
            Icons.add,
            size: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
