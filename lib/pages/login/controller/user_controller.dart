import 'package:e_pharmacy/pages/login/model/user.dart';
import 'package:e_pharmacy/services/db_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final updateUserProvider =
    StateNotifierProvider<UserNotifier, AsyncValue<void>>((ref) {
  return UserNotifier(ref);
});

class UserNotifier extends StateNotifier<AsyncValue<void>> {
  UserNotifier(this.ref) : super(const AsyncValue.data(null));

  final Ref ref;

  Future<void> updateUserInfo(UserModel user, String uid) async {
    state = const AsyncValue.loading();
    try {
      await DbHelper.updateUserInfo(uid, user);
      state = const AsyncValue.data(null);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }
}
