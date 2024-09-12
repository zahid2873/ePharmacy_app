import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/productReview/review_card.dart';
import 'package:e_pharmacy/pages/productReview/total_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductReviewTab extends StatelessWidget {
  const ProductReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text(
          "Reviews & Ratings",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            size: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text(
                "Ratings and reviews are veirified and are from the people who use the same type of device that you use.",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 20),
              TotalRatingWidget(),
              ReviewCard(),
              ReviewCard(),
              ReviewCard(),
              ReviewCard(),
              ReviewCard(),
              ReviewCard(),
              ReviewCard(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
