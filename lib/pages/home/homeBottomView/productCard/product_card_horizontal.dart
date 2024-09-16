import 'package:e_pharmacy/common/brand_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        height: 120,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => GoRouter.of(context).pushNamed("productDetails"),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 120,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTehZW0StD12BwB2Ko91f5JivOI9AvN0kpMg&s",
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 6,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.amber,
                      ),
                      child: const Text(
                        "25%",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    right: 6,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    // ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        "Antibiotics",
                        style: TextStyle(fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const BrandTitle(),
                      const Spacer(),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "\$200",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 6),
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                size: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
