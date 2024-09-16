import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/brands/brands_widget.dart';
import 'package:e_pharmacy/pages/store/feature_product_item.dart';
import 'package:e_pharmacy/pages/store/featured_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BrandsTab extends StatelessWidget {
  const BrandsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Brands",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          child: Column(
            children: [
              FeaturedProductWidget(
                itemCount: 12,
                isTitleButtonShow: false,
                title: "Brands",
              )
            ],
          ),
        ),
      ),
    );
  }
}
