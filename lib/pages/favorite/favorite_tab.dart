import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/home/homeBottomView/productCard/product_grid_widget.dart';
import 'package:flutter/material.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text("Wishlist",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black)),
        action: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(16, 15, 16, 0),
        child: ProductGridWidget(),
      ),
    );
  }
}
