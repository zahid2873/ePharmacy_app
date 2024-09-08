import 'package:e_pharmacy/pages/home/homeBottomView/home_bottom_view.dart';
import 'package:e_pharmacy/pages/home/homeTopView/home_top_view.dart';
import 'package:e_pharmacy/pages/login/controller/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeTab extends ConsumerWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.read(authProvider.notifier);
    final authUser = ref.watch(authProvider).user;
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HomeTopView(),
            const HomeBottomView(),
            Text("Name:${authUser.name}"),
            Text("Email:${authUser.email}"),
            Text("Email:${authUser.id}"),
            Text("Email verified:${authUser.emailVerified}"),
            TextButton(
                onPressed: () {
                  authController.signOut();
                },
                child: const Text("SignOut"))
          ],
        ),
      ),
    );
  }
}
