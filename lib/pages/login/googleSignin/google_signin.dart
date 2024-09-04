import 'package:e_pharmacy/common/animated_button.dart';
import 'package:e_pharmacy/common/custom_alert_dialog.dart';
import 'package:e_pharmacy/common/loading_sheet.dart';
import 'package:e_pharmacy/pages/login/googleSignin/google_signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class GoogleSigninButton extends ConsumerWidget {
  const GoogleSigninButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<GoogleSignInState>(googleSigninProvider, (previous, current) {
      if (current == GoogleSignInState.loading) {
        LoadingSheet.showModal(context);
      } else if (current == GoogleSignInState.error) {
        GoRouter.of(context).pop();
        alertDialog(
          context: context,
          isOnlyCancel: true,
          title: "Google sign in failed",
          cancelTitle: "Cancel",
        );
      } else if (current == GoogleSignInState.success) {
        GoRouter.of(context).pop();
      }
    });
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
      onTap: () {
        ref.read(googleSigninProvider.notifier).signInWithGoogle();
      },
    );
  }
}
