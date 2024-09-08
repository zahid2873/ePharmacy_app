import 'package:e_pharmacy/common/custom_textfiled.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 30, 16, 10),
      child: CustomTextField(
        maxLine: 1,
        hintText: "Search in store",
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
