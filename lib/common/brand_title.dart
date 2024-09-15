import 'package:flutter/material.dart';

class BrandTitle extends StatelessWidget {
  const BrandTitle(
      {super.key,
      this.title,
      this.titleColor,
      this.textStyle,
      this.icon,
      this.iconColor,
      this.iconSize});
  final String? title;
  final Color? titleColor;
  final TextStyle? textStyle;
  final Widget? icon;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title ?? "Nike",
          style: textStyle ?? const TextStyle(fontSize: 10, color: Colors.grey),
        ),
        const SizedBox(width: 5),
        icon ??
            const Icon(
              Icons.verified,
              size: 10,
              color: Colors.blue,
            ),
      ],
    );
  }
}
