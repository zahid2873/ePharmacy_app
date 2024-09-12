import 'package:e_pharmacy/pages/home/homeTopView/circular_container.dart';
import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatelessWidget {
  const ChoiceChipWidget(
      {super.key,
      this.text,
      this.onTap,
      this.color,
      this.isColor = true,
      this.isSelected = false});
  final String? text;
  final void Function(bool)? onTap;
  final Color? color;
  final bool isColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: !isColor
          ? const EdgeInsets.only(right: 10.0)
          : const EdgeInsets.all(0),
      child: ChoiceChip(
        label: !isColor
            ? Text(
                text ?? "",
                style: const TextStyle(fontSize: 14, color: Colors.black),
              )
            : const SizedBox.shrink(),
        labelStyle: TextStyle(color: isSelected ? Colors.white : null),
        avatar: isColor
            ? CircularContainer(
                height: 50,
                width: 50,
                backgroundColor: color,
              )
            : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? color : null,
        selected: isSelected,
        onSelected: onTap,
      ),
    );
  }
}
