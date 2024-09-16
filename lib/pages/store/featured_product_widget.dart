import 'package:e_pharmacy/common/title_widget.dart';
import 'package:e_pharmacy/pages/store/feature_product_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedProductWidget extends StatelessWidget {
  const FeaturedProductWidget(
      {super.key, this.title, this.isTitleButtonShow = true, this.itemCount});
  final String? title;
  final bool isTitleButtonShow;
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TitleWidget(
            onTap: isTitleButtonShow
                ? () => GoRouter.of(context).pushNamed('brandsTab')
                : null,
            title: title ?? "Featured Brands",
            isEnableButton: isTitleButtonShow,
          ),
        ),
        GridView.builder(
          padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
          scrollDirection: Axis.vertical,
          itemCount: itemCount ?? 8,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 80,
          ),
          itemBuilder: (index, _) {
            return const FeaturedProductItem();
          },
        ),
      ],
    );
  }
}
