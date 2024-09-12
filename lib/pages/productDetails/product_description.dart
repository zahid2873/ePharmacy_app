import 'package:e_pharmacy/common/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key, this.productDescription});
  final String? productDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const TitleWidget(
          title: "Description",
          isEnableButton: false,
        ),
        ReadMoreText(
          productDescription ??
              '''
The radiance lives on in the Nike Air Force 1 '07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine. A subtle platform gives you just the right amount of height.
The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.
''',
          trimMode: TrimMode.Line,
          trimLines: 3,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
}
