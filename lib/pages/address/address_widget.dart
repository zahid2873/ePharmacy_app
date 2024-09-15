import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddressWidget extends ConsumerWidget {
  const AddressWidget({super.key, this.isSelected = false});
  final bool isSelected;

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
            color: isSelected ? Colors.blue[100] : null,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey),
          ),
          child: Stack(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Zahid Hasan",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "01783864132",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Text(
                    "Shaymoli, Dhaka, Bangaladesh",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: isSelected
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
