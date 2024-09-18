import 'package:e_pharmacy/common/animated_button.dart';
import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/common/title_widget.dart';
import 'package:e_pharmacy/pages/login/controller/authentication_controller.dart';
import 'package:e_pharmacy/pages/profile/update_profile_img.dart';
import 'package:e_pharmacy/pages/profile/update_profile_info.dart';
import 'package:e_pharmacy/pages/profile/update_profile_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UpdateProfile extends ConsumerWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authUser = ref.watch(authProvider).user;
    final userStream = ref.watch(userProvider(authUser.id)).value;
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const UpdateProfileImg(),
              const DividerWidget(),
              const TitleWidget(
                title: "Profile Information",
                isEnableButton: false,
              ),
              const SizedBox(height: 15),
              UpdateProfileMenuItem(
                title: "Name",
                value: userStream?.name ?? authUser.name ?? "",
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              UpdateProfileMenuItem(
                title: "Username",
                value: "${userStream?.email?.split("@").first}",
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              const DividerWidget(),
              TitleWidget(
                onTap: () {},
                title: "Personal Information",
                isEnableButton: false,
              ),
              UpdateProfileMenuItem(
                title: "User ID",
                value: authUser.id,
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.copy,
                    size: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              UpdateProfileMenuItem(
                title: "Email",
                value: userStream?.email ?? authUser.email ?? "",
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              UpdateProfileMenuItem(
                title: "Phone Number",
                value: userStream?.phoneBumber?? authUser.phoneNumber ?? "",
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              UpdateProfileMenuItem(
                title: "Gender",
                value: userStream?.gender?? "",
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              UpdateProfileMenuItem(
                title: "Date of Birth",
                value: userStream?.timestamp.toString()?? "09 Sept, 1999",
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              AnimatedButton(
                onTap: () => updateInfoModalBottomSheet(context),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Text(
                    "Update",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  updateInfoModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: true,
      barrierColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: UpdateProfileInfo(),
        );
      },
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 15),
        Divider(),
        SizedBox(height: 15),
      ],
    );
  }
}
