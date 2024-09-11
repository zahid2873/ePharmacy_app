import 'package:e_pharmacy/pages/login/controller/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateProfileImg extends ConsumerWidget {
  const UpdateProfileImg({super.key, this.ontap});
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authUser = ref.watch(authProvider).user;
    return Center(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              authUser.imageUrl ??
                  "https://static.vecteezy.com/system/resources/previews/005/129/844/non_2x/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg",
              height: 80,
              width: 80,
            ),
          ),
          TextButton(
            onPressed: ontap ?? () {},
            child: const Text("Change Profile Picture"),
          ),
        ],
      ),
    );
  }
}
