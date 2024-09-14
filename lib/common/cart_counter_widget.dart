import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartCounterWidget extends StatelessWidget {
  const CartCounterWidget({super.key, this.icon, this.onTap});
  final Icon? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap ??  () => GoRouter.of(context).pushNamed("cart"),
      icon: const Badge(
        backgroundColor: Colors.black,
        label: Text(
          "2",
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        child: Icon(Icons.shop),
      ),
    );
  }
}
