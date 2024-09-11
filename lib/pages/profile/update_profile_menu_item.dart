import 'package:flutter/material.dart';

class UpdateProfileMenuItem extends StatelessWidget {
  const UpdateProfileMenuItem(
      {super.key, this.title, this.value, this.trailing});
  final String? title;
  final String? value;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              title ?? "Title",
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              value ?? "Value",
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
          Expanded(child: trailing ?? const SizedBox.shrink()),
        ],
      ),
    );
  }
}
