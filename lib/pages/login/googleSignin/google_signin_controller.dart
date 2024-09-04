import 'package:authentication_repository/authentication_repository.dart';
import 'package:e_pharmacy/repository/authentication_repo_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum GoogleSignInState {
  initial,
  loading,
  success,
  error,
}

final googleSigninProvider =
    StateNotifierProvider<GoogleSigninController, GoogleSignInState>((ref) {
  final authenticationRepository = ref.watch(authenticationProvider);
  return GoogleSigninController(authenticationRepository);
});

class GoogleSigninController extends StateNotifier<GoogleSignInState> {
  final AuthenticationRepository _authenticationRepository;
  GoogleSigninController(this._authenticationRepository)
      : super(GoogleSignInState.initial);

  Future<void> signInWithGoogle() async {
    state = GoogleSignInState.loading;
    try {
      final isNewUser = await _authenticationRepository.signInWithGoogle();
      if (isNewUser != null && isNewUser) {}
      state = GoogleSignInState.success;
    } on SignInWithGoogleFailure catch (_) {
      state = GoogleSignInState.error;
    }
  }
}
