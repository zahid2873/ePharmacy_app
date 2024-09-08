import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({super.key, this.backgroundColor});
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.green,
      ),
    );
  }
}
