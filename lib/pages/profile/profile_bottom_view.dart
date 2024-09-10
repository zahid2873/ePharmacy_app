import 'package:e_pharmacy/pages/profile/account_settings_widget.dart';
import 'package:e_pharmacy/pages/profile/app_settings.dart';
import 'package:flutter/material.dart';

class ProfileBottomView extends StatelessWidget {
  const ProfileBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AccountSettingsWidget(),
        AppSettings(),
      ],
    );
  }
}
