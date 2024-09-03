import 'package:e_pharmacy/common/animatedShape/animated_shape.dart';
import 'package:e_pharmacy/common/auth_switch_button.dart';
import 'package:e_pharmacy/common/slide_fade_switcher.dart';
import 'package:e_pharmacy/pages/login/signin/signin_widget.dart';
import 'package:e_pharmacy/pages/login/signup/signup_widget.dart';
import 'package:flutter/material.dart';

class LoginTab extends StatefulWidget {
  const LoginTab({super.key});

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  bool isSignin = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 250, 16, 0),
            child: SlideFadeSwitcher(
              child: isSignin ? SigninWidget() : SignupWidget(),
            ),
          ),
          const AnimatedShape(
            title: "Create Account",
            color: Colors.blue,
            show: true,
          ),
             AnimatedShape(
            title: "Welcome Back",
            color: Colors.pink,
            show: !isSignin,
          ),
          AuthSwitchButton(
            onTap: () {
              setState(() {
                isSignin = !isSignin;
              });
            },
            signIn: isSignin,
          ),
        ],
      ),
    );
  }
}
