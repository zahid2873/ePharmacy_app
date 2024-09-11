import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    this.title,
    this.buttonTitle = "View all",
    this.onTap,
    this.isEnableButton = true,
  });
  final String? title;
  final String buttonTitle;
  final VoidCallback? onTap;
  final bool isEnableButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? "",
          style: const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        isEnableButton
            ? TextButton(onPressed: onTap ?? () {}, child: Text(buttonTitle))
            : const SizedBox.shrink()
      ],
    );
  }
}
