import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({super.key, this.backgroundColor, this.icon, this.onTap});
  final Icon? icon;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 15,
      backgroundColor: backgroundColor ?? Colors.grey,
      child: IconButton(
        onPressed: onTap ?? () {},
        icon: icon ??
            const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 14,
            ),
      ),
    );
  }
}
