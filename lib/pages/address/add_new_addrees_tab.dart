import 'package:e_pharmacy/common/animated_button.dart';
import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/common/custom_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddNewAddreesTab extends StatelessWidget {
  const AddNewAddreesTab({super.key});

  @override
  Widget build(BuildContext context) {
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
              const CustomTextField(
                maxLine: 1,
                hintText: "Name",
                prefixIcon: Icon(Icons.person),
              ),
              const SizedBox(height: 10),
              const CustomTextField(
                maxLine: 1,
                hintText: "Phone Number",
                prefixIcon: Icon(Icons.phone),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      maxLine: 1,
                      hintText: "Street",
                      prefixIcon: Icon(Icons.location_city),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomTextField(
                      maxLine: 1,
                      hintText: "Postal Code",
                      prefixIcon: Icon(Icons.local_post_office),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      maxLine: 1,
                      hintText: "City",
                      prefixIcon: Icon(Icons.location_city),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomTextField(
                      maxLine: 1,
                      hintText: "State",
                      prefixIcon: Icon(Icons.location_city),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const CustomTextField(
                maxLine: 1,
                hintText: "Country",
                prefixIcon: Icon(Icons.location_city_rounded),
              ),
              const SizedBox(height: 20),
              AnimatedButton(
                onTap: () {},
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
}
