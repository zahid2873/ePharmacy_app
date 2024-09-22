import 'package:e_pharmacy/common/animated_button.dart';
import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/common/custom_textfiled.dart';
import 'package:e_pharmacy/pages/address/controller/address_controller.dart';
import 'package:e_pharmacy/pages/address/model/user_address.dart';
import 'package:e_pharmacy/pages/login/controller/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddNewAddreesTab extends ConsumerWidget {
  AddNewAddreesTab({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController postalController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressController = ref.watch(addressProvider.notifier);
    final authController = ref.watch(authProvider).user;
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Add New Address",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            children: [
              CustomTextField(
                controller: nameController,
                maxLine: 1,
                hintText: "Name",
                prefixIcon: const Icon(Icons.person),
              ),
              const SizedBox(height: 10),
              CustomTextField(
                controller: phoneController,
                maxLine: 1,
                hintText: "Phone Number",
                prefixIcon: const Icon(Icons.phone),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller: streetController,
                      maxLine: 1,
                      hintText: "Street",
                      prefixIcon: const Icon(Icons.location_city),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomTextField(
                      controller: postalController,
                      maxLine: 1,
                      hintText: "Postal Code",
                      prefixIcon: const Icon(Icons.local_post_office),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller: cityController,
                      maxLine: 1,
                      hintText: "City",
                      prefixIcon: const Icon(Icons.location_city),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomTextField(
                      controller: stateController,
                      maxLine: 1,
                      hintText: "State",
                      prefixIcon: const Icon(Icons.location_city),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomTextField(
                controller: countryController,
                maxLine: 1,
                hintText: "Country",
                prefixIcon: const Icon(Icons.location_city_rounded),
              ),
              const SizedBox(height: 20),
              AnimatedButton(
                onTap: () {
                  UserAddress address = UserAddress(
                    uid: authController.id,
                    name: nameController.text.trim(),
                    phoneNumber: phoneController.text.trim(),
                    street: streetController.text.trim(),
                    postalCode: postalController.text.trim(),
                    city: cityController.text.trim(),
                    state: stateController.text.trim(),
                    country: countryController.text.trim(),
                    dateTime: DateTime.now(),
                    isSelected: false,
                  );
                  addressController.addAddress(address);
                  clearTextFiled();
                  GoRouter.of(context).pop();
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Text(
                    "Save",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  clearTextFiled() {
    nameController.clear();
    phoneController.clear();
    stateController.clear();
    postalController.clear();
    streetController.clear();
    countryController.clear();
    cityController.clear();
  }
}
