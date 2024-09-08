import 'package:flutter_riverpod/flutter_riverpod.dart';

final carouselProvider = StateNotifierProvider<CarouselController, int>((ref) {
  return CarouselController(0);
});

class CarouselController extends StateNotifier<int> {
  CarouselController(super.state);
  void setPosition(int value) {
    state = value;
  }
}
