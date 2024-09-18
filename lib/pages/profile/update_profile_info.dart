import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_pharmacy/common/animated_button.dart';
import 'package:e_pharmacy/common/custom_textfiled.dart';
import 'package:e_pharmacy/pages/login/controller/authentication_controller.dart';
import 'package:e_pharmacy/pages/login/controller/user_controller.dart';
import 'package:e_pharmacy/pages/login/model/user.dart';
import 'package:e_pharmacy/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UpdateProfileInfo extends ConsumerWidget {
  UpdateProfileInfo({super.key});
  final TextEditingController nameController = TextEditingController();
  // final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController birthController = TextEditingController();
  ValueNotifier<DateTime> dateTime = ValueNotifier(DateTime.now());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authUser = ref.watch(authProvider).user;
    final userStream = ref.watch(userProvider(authUser.id)).value;
    nameController.text = userStream?.name ?? "";
    emailController.text = userStream?.email ?? "";
    phoneNumberController.text = userStream?.phoneBumber ?? "";
    genderController.text = userStream?.gender ?? "";
    birthController.text = userStream?.gender ?? "";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top + 56,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16, right: 12),
                child: Text(
                  "Update Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                  size: 20,
                ),
              ),
            ],
          ),
          CustomTextField(
            controller: nameController,
            maxLine: 1,
            hintText: "Name",
            prefixIcon: const Icon(Icons.person),
          ),
          const SizedBox(height: 10),
          CustomTextField(
            controller: emailController,
            maxLine: 1,
            hintText: "Email",
            prefixIcon: const Icon(Icons.email),
          ),
          const SizedBox(height: 10),
          CustomTextField(
            controller: phoneNumberController,
            maxLine: 1,
            hintText: "Phone Number",
            prefixIcon: const Icon(Icons.phone),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: genderController,
                  maxLine: 1,
                  hintText: "Gender",
                  prefixIcon: const Icon(Icons.location_city),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomTextField(
                  controller: birthController,
                  maxLine: 1,
                  hintText: "Date of Birth",
                  prefixIcon: const Icon(Icons.calendar_month),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // const Row(
          //   children: [
          //     Expanded(
          //       child: CustomTextField(
          //         maxLine: 1,
          //         hintText: "City",
          //         prefixIcon: Icon(Icons.location_city),
          //       ),
          //     ),
          //     SizedBox(width: 10),
          //     Expanded(
          //       child: CustomTextField(
          //         maxLine: 1,
          //         hintText: "State",
          //         prefixIcon: Icon(Icons.location_city),
          //       ),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 10),
          // const CustomTextField(
          //   maxLine: 1,
          //   hintText: "Country",
          //   prefixIcon: Icon(Icons.location_city_rounded),
          // ),
          Ink(
            decoration: BoxDecoration(
              color: const Color(0xfff8f8f8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                Utils.showSheet(context, child: buildDatePicker(),
                    onClicked: () {
                  //  GoRouter.of(context).pop(context);
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      const Icon(Icons.calendar_month),
                      const SizedBox(width: 10),
                      Text(
                        "Due Date & Time",
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xffe9e8fd),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ValueListenableBuilder<DateTime>(
                      valueListenable: dateTime,
                      builder: (_, date, child) {
                        return Text(
                          dateTime.value.year.toString(),
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          AnimatedButton(
            onTap: () {
              final userModel = UserModel(
                uid: authUser.id,
                name: nameController.text,
                email: emailController.text,
                profileImg: authUser.imageUrl,
                phoneBumber: phoneNumberController.text,
                gender: genderController.text,
                timestamp: toTimestamp(dateTime.value),
              );
              ref
                  .read(updateUserProvider.notifier)
                  .updateUserInfo(userModel, authUser.id);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(12)),
              child: const Text(
                "Save",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDatePicker() {
    var now = DateTime.now();
    //var minimumDate = dateTime.value.isBefore(DateTime(100));
    return SizedBox(
      height: 200,
      child: CupertinoDatePicker(
        minimumYear: now.year - 100,
        maximumYear: now.year,
        initialDateTime: dateTime.value,
        minimumDate: DateTime(now.year - 100, now.month, now.day),
        mode: CupertinoDatePickerMode.date,
        onDateTimeChanged: (dateTime) {
          this.dateTime.value = dateTime.copyWith(second: 0, millisecond: 0);
        },
      ),
    );
  }
}

Timestamp toTimestamp(DateTime dateTime) {
  return Timestamp.fromDate(dateTime);
}

// Convert Timestamp to DateTime
DateTime fromTimestamp(Timestamp timestamp) {
  return timestamp.toDate();
}
