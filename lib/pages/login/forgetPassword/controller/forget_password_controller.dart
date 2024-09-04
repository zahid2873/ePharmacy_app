import 'package:authentication_repository/authentication_repository.dart';
import 'package:e_pharmacy/pages/login/forgetPassword/controller/forget_password_state.dart';
import 'package:e_pharmacy/repository/authentication_repo_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';

final forgetPasswordProvider =
    StateNotifierProvider.autoDispose<ForgetPasswordController, ForgetPasswordState>((ref) {
  return ForgetPasswordController(ref.watch(authenticationProvider));
});

class ForgetPasswordController extends StateNotifier<ForgetPasswordState> {
  final AuthenticationRepository _authenticationRepository;
  ForgetPasswordController(this._authenticationRepository)
      : super(const ForgetPasswordState());

  void onEmailChange(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(
      email: email,
      status: Formz.validate(
        [
          email,
        ],
      ),
    );
  }

  void forgetPassword() async {
    if (!state.status.isValidated) return;
    state = state.copyWith(status: FormzStatus.submissionInProgress);
    try {
      await _authenticationRepository.forgetPassword(
        email: state.email.value,
      );
      state = state.copyWith(status: FormzStatus.submissionSuccess);
    } on ForgetPasswordFailure catch (e) {
      state = state.copyWith(
          status: FormzStatus.submissionFailure, errorMessage: e.coed);
    }
  }
}
