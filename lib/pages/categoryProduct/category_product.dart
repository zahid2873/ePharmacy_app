import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/categoryProduct/sub_categroy_product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          leading: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            "Cart",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://st4.depositphotos.com/1229718/31477/i/450/depositphotos_314770228-stock-photo-sports-equipment.jpg",
                    height: 150,
                    width: double.infinity,
                  ),
                ),
                const SubCategroyProduct(),
                const SubCategroyProduct(),
                const SubCategroyProduct(),
                const SubCategroyProduct(),
                const SubCategroyProduct(),
              ],
            ),
          ),
        ));
  }
}
