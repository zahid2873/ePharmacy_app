import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:e_pharmacy/constants/global.dart';
import 'package:e_pharmacy/pages/login/model/user.dart';
import 'package:e_pharmacy/repository/authentication_repo_provider.dart';
import 'package:e_pharmacy/services/db_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'authentication_state.dart';

final authProvider = StateNotifierProvider<AuthController, AuthenticationState>(
  (ref) => AuthController(ref.watch(authenticationProvider)),
);
final userProvider = StreamProvider.family<UserModel, String>((
  ref,
  uid,
) {
  return ref.watch(authProvider.notifier).getUsersById(uid);
});

class AuthController extends StateNotifier<AuthenticationState> {
  final AuthenticationRepository _authRepository;
  late final StreamSubscription _streamSubscription;
  AuthController(this._authRepository)
      : super(const AuthenticationState.unauthenticated()) {
    _streamSubscription =
        _authRepository.user.listen((user) => _onUserChanged(user));
  }
  void _onUserChanged(AuthUser user) async {
    if (user.isEmpty) {
      state = const AuthenticationState.unauthenticated();
    } else {
      state = AuthenticationState.authenticated(user);
    }
  }

  Future<void> addUser() async {
    final UserModel users = UserModel(
      uid: state.user.id,
      name: state.user.name,
      email: state.user.email,
      profileImg: state.user.imageUrl,
      isAdmin: state.user.email == 'mahdi.zhm13@gmail.com' ? true : false,
    );
    try {
      await DbHelper.addUser(users);
    } catch (e) {
      logger.e(e.toString());
    }
  }

  Stream<UserModel> getUsersById(String uid) {
    return DbHelper.getUserById(uid);
  }

  void signOut() {
    _authRepository.signOut();
  }

  @override
  void dispose() {
    super.dispose();
    _streamSubscription.cancel();
  }
}
