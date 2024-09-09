import 'package:flutter/material.dart';

class CartCounterWidget extends StatelessWidget {
  const CartCounterWidget({super.key, this.icon, this.onTap});
  final Icon? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap ?? () {},
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
