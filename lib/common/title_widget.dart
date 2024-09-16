import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    this.title,
    this.buttonTitle = "View all",
    this.onTap,
    this.isEnableButton = true,
    this.textStyle,
  });
  final String? title;
  final String buttonTitle;
  final TextStyle? textStyle;
  final VoidCallback? onTap;
  final bool isEnableButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? "",
          style: textStyle ??
              const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
        ),
        isEnableButton
            ? TextButton(
                onPressed:
                     () => GoRouter.of(context).pushNamed('productTab'),
                child: Text(buttonTitle))
            : const SizedBox.shrink()
      ],
    );
  }
}
