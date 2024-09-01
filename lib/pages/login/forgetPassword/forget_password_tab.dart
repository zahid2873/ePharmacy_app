import 'package:e_pharmacy/common/custom_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordTab extends StatelessWidget {
  ForgetPasswordTab({super.key});
  final TextEditingController forgetPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              controller: forgetPasswordController,
              maxLine: 1,
              hintText: "Please enter your email",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Request",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
