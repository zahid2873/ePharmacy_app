import 'package:e_pharmacy/common/circular_img_widget.dart';
import 'package:flutter/material.dart';

class ProductImageCard extends StatelessWidget {
  const ProductImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircularImgWidget(height: 250, width: double.infinity),
        SizedBox(
          height: 110,
          child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return const CircularImgWidget(
                height: 100,
                width: 100,
                backgroundColor: Colors.grey,
              );
            },
          ),
        )
      ],
    );
  }
}
