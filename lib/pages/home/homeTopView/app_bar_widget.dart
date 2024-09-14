import 'package:e_pharmacy/common/cart_counter_widget.dart';
import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/login/controller/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppBarWidget extends ConsumerWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authUser = ref.watch(authProvider).user;
    return CustomAppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Good day for shopping",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(
              authUser.name ?? "Anonymous",
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        action: const CartCounterWidget());
  }
}
