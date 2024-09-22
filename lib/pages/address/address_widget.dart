import 'package:e_pharmacy/pages/address/model/user_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddressWidget extends ConsumerWidget {
  const AddressWidget({super.key,required this.address});
  final UserAddress address;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          decoration: BoxDecoration(
            color: address.isSelected ?? false ? Colors.blue[100] : null,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey),
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address.name ?? "",
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    address.phoneNumber ?? "",
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Text(
                    "${address.street},${address.state},${address.country}",
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: address.isSelected??false
                    ? const Icon(
                        Icons.verified,
                        size: 16,
                      )
                    : const SizedBox.shrink(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
