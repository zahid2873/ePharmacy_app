import 'package:e_pharmacy/pages/store/feature_product_item.dart';
import 'package:flutter/material.dart';

class BrandProductItem extends StatelessWidget {
  BrandProductItem({super.key});
  final List<String> img = [
    "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/21a31d67-31d9-47cd-bb16-23b2d22bc9d0/NIKE+AIR+MAX+SYSTM.png",
    "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/21a31d67-31d9-47cd-bb16-23b2d22bc9d0/NIKE+AIR+MAX+SYSTM.png",
    "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/21a31d67-31d9-47cd-bb16-23b2d22bc9d0/NIKE+AIR+MAX+SYSTM.png",
  ];

  @override
  Widget build(BuildContext context) {
    return FeaturedProductItem(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < img.length; i++)
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/21a31d67-31d9-47cd-bb16-23b2d22bc9d0/NIKE+AIR+MAX+SYSTM.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
