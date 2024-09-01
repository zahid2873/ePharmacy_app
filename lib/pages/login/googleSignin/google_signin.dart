import 'package:e_pharmacy/common/animated_button.dart';
import 'package:flutter/material.dart';

class GoogleSigninButton extends StatelessWidget {
  const GoogleSigninButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: const Text("Signin with Google"),
      ),
      onTap: () {},
    );
  }
}
