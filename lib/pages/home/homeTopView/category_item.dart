import 'package:e_pharmacy/dummyData/dummy_data.dart';
import 'package:e_pharmacy/models/categoryModel/category_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel, required this.index});
  final CategoryModel categoryModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      child: Ink(
        padding: EdgeInsets.only(
        left: index == 0 ? 16 : 11, right: index == (categoryList.length - 1) ? 16 : 0),
        child: InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: ()=>GoRouter.of(context).pushNamed('categoryProduct'),
          child: Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(6)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      categoryModel.categoryImage ??
                          "https://thumbs.dreamstime.com/b/antibiotic-free-sign-stamp-white-background-vector-illustration-antibiotic-free-sign-stamp-171102996.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                height: 20,
                width: 60,
                margin: const EdgeInsets.only(top: 5),
                alignment: Alignment.topCenter,
                child: Text(
                  categoryModel.categoryName ?? "",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(fontSize: 12),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
