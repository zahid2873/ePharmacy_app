import 'package:e_pharmacy/dummyData/dummy_data.dart';
import 'package:e_pharmacy/pages/home/homeTopView/category_item.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
          child: Text(
            "Popular Categories",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          // alignment: Alignment.bottomLeft,
          height: 90,
          margin: const EdgeInsets.only(top: 9),
          child: ListView.builder(
            itemCount: categoryList.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return CategoryItem(
                categoryModel: categoryList[index],
                index: index,
              );
            },
          ),
        )
      ],
    );
  }
}
