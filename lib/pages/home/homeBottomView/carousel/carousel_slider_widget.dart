import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_pharmacy/dummyData/dummy_data.dart';
import 'package:e_pharmacy/pages/home/homeBottomView/carousel/carousel_slider_item.dart';
import 'package:e_pharmacy/pages/home/homeBottomView/carousel/controller/carousel_controller.dart';
import 'package:e_pharmacy/pages/home/homeTopView/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarouselSliderWidget extends ConsumerWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final position = ref.watch(carouselProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 200.0,
                viewportFraction: 1,
                onPageChanged: (index, _) {
                  ref.read(carouselProvider.notifier).setPosition(index);
                }),
            items: categoryList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return CarouselSliderItem(categoryModel: i);
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                CircularContainer(
                  height: 4,
                  width: 20,
                  backgroundColor:
                      position % 3 == i ? Colors.green : Colors.grey,
                  radius: 50,
                  margin: const EdgeInsets.only(right: 8),
                ),
            ],
          )
        ],
      ),
    );
  }
}
