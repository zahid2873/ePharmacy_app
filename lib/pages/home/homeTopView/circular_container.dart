import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor,
    this.child,
    this.margin,
  });
  final double width;
  final double height;
  final double radius;
  final double padding;
  final Color? backgroundColor;
  final Widget? child;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin ?? const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
