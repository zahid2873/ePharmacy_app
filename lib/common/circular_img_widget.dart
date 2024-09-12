import 'package:flutter/material.dart';

class CircularImgWidget extends StatelessWidget {
  const CircularImgWidget({
    super.key,
    this.height,
    this.width,
    this.padding,
    this.backgroundColor,
    this.radius,
    this.imgUrl,
    this.margin,
  });
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final double? radius;
  final String? imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          margin ?? const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: padding ?? const EdgeInsets.all(0),
      height: height ?? 100,
      width: width ?? 100,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.black,
        borderRadius: BorderRadius.circular(radius ?? 20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 20),
        child: Image.network(
          imgUrl ??
              "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/21a31d67-31d9-47cd-bb16-23b2d22bc9d0/NIKE+AIR+MAX+SYSTM.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
