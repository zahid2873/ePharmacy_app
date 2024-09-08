import 'package:e_pharmacy/models/categoryModel/category_model.dart';
import 'package:flutter/material.dart';

class CarouselSliderItem extends StatelessWidget {
  const CarouselSliderItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        
        height: 200,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.network(
          categoryModel.categoryImage ?? "",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
