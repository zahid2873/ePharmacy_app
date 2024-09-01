import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushNamed("forgetPassword");
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text("Forget Password"),
        ),
      ),
    );
  }
}
