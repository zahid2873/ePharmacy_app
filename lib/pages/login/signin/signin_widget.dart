import 'package:e_pharmacy/common/animated_button.dart';
import 'package:e_pharmacy/common/custom_textfiled.dart';
import 'package:e_pharmacy/pages/login/googleSignin/google_signin.dart';
import 'package:e_pharmacy/pages/login/login_divider.dart';
import 'package:e_pharmacy/pages/login/signin/controller/signin_controller.dart';
import 'package:e_pharmacy/pages/login/signin/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';

class SigninWidget extends ConsumerWidget {
  SigninWidget({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInState = ref.watch(signInProvider);
    return Column(
      children: [
        CustomTextField(
          //controller: emailController,
          maxLine: 1,
          hintText: "Email",
          errorText: signInState.email.invalid
              ? Email.showEmailErrorMessage(signInState.email.error)
              : null,
          onChanged: (email) =>
              ref.read(signInProvider.notifier).onEmailChange(email),
        ),
        const SizedBox(height: 15),
        CustomTextField(
          // controller: passwordController,
          isObsecure: true,
          maxLine: 1,
          hintText: "Enter your password",
          errorText: signInState.password.invalid
              ? Password.showPaswordErrorMessage(signInState.password.error)
              : null,
          onChanged: (password) =>
              ref.read(signInProvider.notifier).onPasswordChange(password),
        ),
        const ForgetPassword(),
        const SizedBox(height: 20),
        AnimatedButton(
          onTap: signInState.status.isValidated
              ? () =>
                  ref.read(signInProvider.notifier).signInWithEmailAndPassword()
              : null,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.yellow[700]),
            child: const Text(
              "Sign In",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 25),
        const LoginDivider(),
        const SizedBox(height: 25),
        const GoogleSigninButton(),
      ],
    );
  }
}
