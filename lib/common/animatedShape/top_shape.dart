import 'package:flutter/material.dart';

class TopShape extends CustomClipper<Path> {
  late final AnimationController _controller;
  TopShape._(this._controller);
  static Widget draw(
    Color color,
    String text,
    AnimationController controller,
  ) {
    return ClipPath(
      clipper: TopShape._(controller),
      child: ColoredBox(
        color: color,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              text,
              style: const TextStyle(fontSize: 34),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Path getClip(Size size) {
    final path = Path();
    //first point
    path.lineTo(
        0,
        Tween<double>(begin: 0, end: size.height * 0.76555)
            .animate(_controller)
            .value,);
    //second ponit
    path.cubicTo(
      size.width * 0.0333333333,
      Tween<double>(begin: 0, end: size.height * 0.684210526)
          .animate(_controller)
          .value,
     // size.height * 0.684210526,
      size.width * 0.12820512820,
      Tween<double>(begin: 0, end: size.height * 0.5598086124)
          .animate(_controller)
          .value,
      //size.height * 0.5598086124,
      size.width * 0.22564102564,
      Tween<double>(begin: 0, end: size.height * 0.66507177030)
          .animate(_controller)
          .value,
     // size.height * 0.66507177030,
    );
    //third ponit
    path.cubicTo(
      size.width * 0.34358974,
       Tween<double>(begin: 0, end: size.height * 0.79425837)
          .animate(_controller)
          .value,
     // size.height * 0.79425837,
      size.width * 0.392307692,
       Tween<double>(begin: 0, end: size.height * 0.8181818181)
          .animate(_controller)
          .value,
     // size.height * 0.8181818181,
      size.width * 0.451282051,
       Tween<double>(begin: 0, end: size.height * 0.74641148)
          .animate(_controller)
          .value,
      //size.height * 0.74641148,
    );
    //fourth ponit
    path.cubicTo(
      size.width * 0.512820512,
       Tween<double>(begin: 0, end: size.height * 0.6746411483)
          .animate(_controller)
          .value,
      //size.height * 0.6746411483,
      size.width * 0.569230769,
       Tween<double>(begin: 0, end: size.height * 0.41626794)
          .animate(_controller)
          .value,
      //size.height * 0.41626794,
      size.width * 0.64230769,
       Tween<double>(begin: 0, end: size.height * 0.593301435)
          .animate(_controller)
          .value,
      //size.height * 0.593301435,
    );
    //fifth ponit
    path.cubicTo(
      size.width * 0.715386415,
       Tween<double>(begin: 0, end: size.height * 0.7703349282)
          .animate(_controller)
          .value,
     // size.height * 0.7703349282,
      size.width * 0.725641025,
       Tween<double>(begin: 0, end: size.height)
          .animate(_controller)
          .value,
     // size.height,
      size.width * 0.7178794871,
       Tween<double>(begin: 0, end: size.height)
          .animate(_controller)
          .value,
     // size.height,
    );
    //sixth ponit
    path.cubicTo(
      size.width * 0.848717948,
       Tween<double>(begin: 0, end: size.height)
          .animate(_controller)
          .value,
      //size.height,
      size.width * 0.89743589,
       Tween<double>(begin: 0, end: size.height * 0.6200956)
          .animate(_controller)
          .value,
     // size.height * 0.6200956,
      size.width,
       Tween<double>(begin: 0, end: size.height * 0.71291866)
          .animate(_controller)
          .value,
     // size.height * 0.71291866,
    );
    // seven point
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
