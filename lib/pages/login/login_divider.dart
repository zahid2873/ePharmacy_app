import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider()),
        Text(
          "Or",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
