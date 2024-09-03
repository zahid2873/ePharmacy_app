import 'package:e_pharmacy/common/animated_button.dart';
import 'package:e_pharmacy/common/custom_textfiled.dart';
import 'package:e_pharmacy/pages/login/signup/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';

class SignupWidget extends ConsumerWidget {
  SignupWidget({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpState = ref.watch(signUpProvider);
    return Column(
      children: [
        CustomTextField(
         // controller: nameController,
          maxLine: 1,
          hintText: "Name",
          errorText: signUpState.name.invalid
              ? Name.showNameErrorMessage(signUpState.name.error)
              : null,
          onChanged: (name) {
            return ref.read(signUpProvider.notifier).onNameChange(name);
          },
        ),
        const SizedBox(height: 15),
        CustomTextField(
         // controller: emailController,
          maxLine: 1,
          hintText: "Email",
          errorText: signUpState.email.invalid
              ? Email.showEmailErrorMessage(signUpState.email.error)
              : null,
          onChanged: (email) =>
              ref.read(signUpProvider.notifier).onEmailChange(email),
        ),
        const SizedBox(height: 15),
        CustomTextField(
         // controller: passwordController,
          isObsecure: true,
          maxLine: 1,
          hintText: "Enter your password",
          errorText: signUpState.password.invalid
              ? Password.showPaswordErrorMessage(signUpState.password.error)
              : null,
          onChanged: (password) =>
              ref.read(signUpProvider.notifier).onPasswordChange(password),
        ),
        const SizedBox(height: 20),
        AnimatedButton(
          onTap: signUpState.status.isValidated
              ? () =>
                  ref.read(signUpProvider.notifier).signUpWithEmailAndPassword()
              : null,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.yellow[700]),
            child: const Text(
              "Sign Up",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
