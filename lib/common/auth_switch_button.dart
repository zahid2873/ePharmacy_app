import 'package:e_pharmacy/common/slide_fade_switcher.dart';
import 'package:flutter/material.dart';

class AuthSwitchButton extends StatelessWidget {
  const AuthSwitchButton({super.key, this.signIn = false, this.onTap});
  final bool signIn;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 30,
      child: Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: onTap,
          child: SlideFadeSwitcher(
              child: signIn
                  ? const Text(
                      "Don't have an account? Sign Up",
                      key: Key("Signin"),
                    )
                  : const Text(
                      "Already have an account? Sign In",
                      key: Key("Signup"),
                    )),
        ),
      ),
    );
  }
}
