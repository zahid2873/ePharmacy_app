import 'package:e_pharmacy/common/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onTap: onTap ?? () => GoRouter.of(context).pushNamed('checkout'),
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 8),
        height: 50,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(12)),
        child: const Text(
          "Checkout",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
