import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_address.g.dart';
part 'user_address.freezed.dart';

@freezed
class UserAddress with _$UserAddress {
  const factory UserAddress({
    required String uid,
    String? name,
    String? phoneNumber,
    String? street,
    String? postalCode,
    String? city,
    String? state,
    String? country,
    DateTime? dateTime,
    @Default(false) bool? isSelected,
  }) = _UserAddress;
  factory UserAddress.fromJson(Map<String, dynamic> json) =>
      _$UserAddressFromJson(json);
}


