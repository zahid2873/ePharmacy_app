import 'package:e_pharmacy/common/animatedShape/top_shape.dart';
import 'package:flutter/material.dart';

class AnimatedShape extends StatefulWidget {
  const AnimatedShape(
      {super.key,
      required this.title,
      required this.color,
      required this.show});
  final String title;
  final Color color;
  final bool show;
  @override
  State<AnimatedShape> createState() => _AnimatedShapeState();
}

class _AnimatedShapeState extends State<AnimatedShape>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..forward();
  }

  @override
  void didUpdateWidget(covariant AnimatedShape oldWidget) {
    super.didUpdateWidget(oldWidget);
    widget.show
        ? _animationController.reverse()
        : _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 209,
      width: double.infinity,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (_, __) => TopShape.draw(
          widget.color,
          widget.title,
          _animationController,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
}
