import 'package:e_pharmacy/common/cart_counter_widget.dart';
import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/home/homeTopView/search_bar_widget.dart';
import 'package:e_pharmacy/pages/store/brand_product_widget.dart';
import 'package:e_pharmacy/pages/store/featured_product_widget.dart';
import 'package:e_pharmacy/pages/store/tab_bar_widget.dart';
import 'package:flutter/material.dart';

class StoreTab extends StatelessWidget {
  const StoreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CustomAppBar(
          backgroundColor: Colors.blue[500],
          title: const Text("Store"),
          action: const CartCounterWidget(),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: Colors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: ListView(
                    shrinkWrap: true,
                    // physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      SearchBarWidget(),
                      SizedBox(height: 32),
                      FeaturedProductWidget(),
                      SizedBox(height: 70)
                    ],
                  ),
                ),
                bottom: const TabBarWidget(
                  tabs: [
                    Tab(text: "Sports"),
                    Tab(text: "Sports"),
                    Tab(text: "Sports"),
                    Tab(text: "Sports"),
                    Tab(text: "Sports"),
                    Tab(text: "Sports"),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              BrandProductWidget(),
              BrandProductWidget(),
              BrandProductWidget(),
              BrandProductWidget(),
              BrandProductWidget(),
              BrandProductWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
