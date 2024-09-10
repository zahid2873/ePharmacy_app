import 'package:flutter_riverpod/flutter_riverpod.dart';

final navbarProvider = StateNotifierProvider.autoDispose<NavbarController, int>((ref) {
  return NavbarController(0);
});

class NavbarController extends StateNotifier<int> {
  NavbarController(super.state);
  void setPosition(int value) {
    state = value;
  }
}
