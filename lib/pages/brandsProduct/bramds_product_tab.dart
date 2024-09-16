import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/home/homeBottomView/productCard/product_grid_widget.dart';
import 'package:e_pharmacy/pages/store/feature_product_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BrandsProductTab extends StatelessWidget {
  const BrandsProductTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Nike",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(children: [
          const  FeaturedProductItem(),
          const  SizedBox(height: 20),
             DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                  prefixIcon: const Icon(Icons.sort),
                ),
                onChanged: (vale) {},
                items: [
                  'Name',
                  'Higher Price',
                  'Lower Price',
                  'Sale',
                  'Newest',
                  'Popularity'
                ]
                    .map(
                      (option) => DropdownMenuItem(
                        value: option,
                        child: Text(option),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 20),
              const ProductGridWidget()
          ],),
        ),
      ),
    );
  }
}
