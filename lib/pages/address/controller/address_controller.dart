import 'package:e_pharmacy/constants/global.dart';
import 'package:e_pharmacy/pages/address/model/user_address.dart';
import 'package:e_pharmacy/services/db_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addressProvider =
    StateNotifierProvider<AddressController, AsyncValue<List<UserAddress>>>(
        (ref) {
  return AddressController(ref);
});

class AddressController extends StateNotifier<AsyncValue<List<UserAddress>>> {
  AddressController(this.ref) : super(const AsyncValue.loading());

  final Ref ref;

  Future<void> addAddress(UserAddress address) async {
    try {
      await DbHelper.addAddress(address);
    } catch (e) {
      logger.e(e.toString());
    }
  }

  Future<void> fetchAddresses(String userId) async {
    try {
      // Set loading state
      state = const AsyncValue.loading();

      List<UserAddress> addresses = await DbHelper.getUserAddresses(userId);

      addresses.sort((a, b) => b.dateTime!.compareTo(a.dateTime!));

      state = AsyncValue.data(addresses);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e.toString(), stackTrace);
      logger.e(e.toString());
    }
  }
}
