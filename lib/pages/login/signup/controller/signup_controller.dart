import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';
import 'package:equatable/equatable.dart';
part 'signup_state.dart';

final signUpProvider =
    StateNotifierProvider.autoDispose<SignupController, SignUpState>(
  (ref) {
    return SignupController();
  },
);

class SignupController extends StateNotifier<SignUpState> {
  SignupController() : super(const SignUpState());

  void onNameChange(String value) {
    final name = Name.dirty(value);
    state = state.copyWith(
      name: name,
      status: Formz.validate(
        [
          name,
          state.email,
          state.password,
        ],
      ),
    );
  }

  void onEmailChange(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(
      email: email,
      status: Formz.validate(
        [
          state.name,
          email,
          state.password,
        ],
      ),
    );
  }

  void onPasswordChange(String value) {
    final password = Password.dirty(value);
    state = state.copyWith(
      password: password,
      status: Formz.validate(
        [
          state.name,
          state.email,
          password,
        ],
      ),
    );
  }

  void signUpWithEmailAndPassword() async {
    if (!state.status.isValidated) return;
    debugPrint("Signup");
  }
}
