import 'package:e_pharmacy/common/title_widget.dart';
import 'package:e_pharmacy/pages/productDetails/choice_chip_widget.dart';
import 'package:flutter/material.dart';

class ProductVariation extends StatelessWidget {
  const ProductVariation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Row(
            children: [
              TitleWidget(title: "Variation", isEnableButton: false),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Price: ",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Text(
                        "\$25",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "\$20",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )
                    ],
                  ),
                  Text(
                    "Stock: In Stock",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  )
                ],
              )
            ],
          ),
        ),
        const TitleWidget(title: "Colors", isEnableButton: false),
        Wrap(
          children: [
            ChoiceChipWidget(
                color: Colors.black, isSelected: false, onTap: (value) {}),
            ChoiceChipWidget(
                color: Colors.red, isSelected: false, onTap: (value) {}),
            ChoiceChipWidget(
                color: Colors.green, isSelected: true, onTap: (value) {}),
            ChoiceChipWidget(
                color: Colors.blue, isSelected: false, onTap: (value) {}),
          ],
        ),
        const SizedBox(height: 20),
        const TitleWidget(title: "Sizes", isEnableButton: false),
        Wrap(
          children: [
            ChoiceChipWidget(
                text: "34",
                isColor: false,
                isSelected: false,
                onTap: (value) {}),
            ChoiceChipWidget(
                text: "36",
                isColor: false,
                isSelected: true,
                onTap: (value) {}),
            ChoiceChipWidget(
                text: "38",
                isColor: false,
                isSelected: true,
                onTap: (value) {}),
          ],
        )
      ],
    );
  }
}
