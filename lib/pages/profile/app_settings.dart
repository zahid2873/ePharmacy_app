import 'package:e_pharmacy/common/animated_button.dart';
import 'package:e_pharmacy/pages/login/controller/authentication_controller.dart';
import 'package:e_pharmacy/pages/profile/icon_button_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppSettings extends ConsumerWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.read(authProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Apps Settings",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        IconButtonItem(
          icon: const Icon(
            Icons.cloud,
            size: 24,
            color: Colors.black,
          ),
          title: "Load Data",
          subTitle: "Upload data to your cloud firebase",
          onTap: () {},
        ),
        IconButtonItem(
          icon: const Icon(
            Icons.map,
            color: Colors.black,
            size: 24,
          ),
          title: "Geolocation",
          subTitle: "Set recommendation based on location",
          onTap: () {},
          widget: Switch(
              activeColor: Colors.green, value: true, onChanged: (value) {}),
        ),
        IconButtonItem(
          icon: const Icon(
            Icons.safety_check,
            color: Colors.black,
            size: 24,
          ),
          title: "Safe Mode",
          subTitle: "Search result is safe for all ages",
          onTap: () {},
          widget: Switch(
              activeColor: Colors.green, value: false, onChanged: (value) {}),
        ),
        IconButtonItem(
          icon: const Icon(
            Icons.hd,
            color: Colors.black,
            size: 24,
          ),
          title: "HD Image Quality",
          subTitle: "Set image quality to be seen",
          onTap: () {},
          widget: Switch(
              activeColor: Colors.green, value: false, onChanged: (value) {}),
        ),
        const SizedBox(height: 20),
        AnimatedButton(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: const Text("Logout"),
          ),
          onTap: () {
            authController.signOut();
          },
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}
