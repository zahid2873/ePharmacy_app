import 'package:e_pharmacy/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTab extends ConsumerWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   // final googleSignInAuth = ref.watch(googleSignInAuthProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset('assets/images/loginImage.svg'),
            ),
            const SizedBox(height: 10),
            const Text(
              "Login",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              child: Ink(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () async {
                   // await googleSignInAuth.signInWithGoogle();
                  },
                  child: const Center(
                    child: Text(
                      "Google Login",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
