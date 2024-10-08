import 'package:e_pharmacy/common/bottomNavbar/controller/navbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends ConsumerStatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  ConsumerState<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState
    extends ConsumerState<CustomBottomNavigationBar> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final position = ref.watch(navbarProvider);
    return NavigationBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        selectedIndex: position,
        onDestinationSelected: (index) => _onItemTapped(index, context),
        indicatorColor: Colors.blue,
        destinations: const [
          NavigationDestination(
            label: "Home",
            icon: FaIcon(
              FontAwesomeIcons.house,
              size: 20,
            ),
          ),
          NavigationDestination(
            label: "Store",
            icon: FaIcon(
              FontAwesomeIcons.store,
              size: 20,
            ),
          ),
          NavigationDestination(
            label: "Favorite",
            icon: FaIcon(
              FontAwesomeIcons.heart,
              size: 20,
            ),
          ),
          NavigationDestination(
            label: "Profile",
            icon: Icon(
              Icons.person,
              size: 20,
            ),
          ),
        ]);
  }

  // static int _calculateSelectedIndex(BuildContext context) {
  //   final String location = GoRouterState.of(context).uri.toString();
  //   // print(location);
  //   if (location.startsWith('/errorScreen')) {
  //     return 1;
  //   }
  //   if (location.startsWith('/loadingScreen')) {
  //     return 2;
  //   }
  //   if (location.startsWith('/login')) {
  //     return 3;
  //   }
  //   return 0;
  // }

  void _onItemTapped(int index, BuildContext context) {
    ref.read(navbarProvider.notifier).setPosition(index);
    switch (index) {
      case 0:
        GoRouter.of(context).pushNamed('home');
        break;
      case 1:
        GoRouter.of(context).pushNamed('store');
        break;
      case 2:
        GoRouter.of(context).pushNamed('favorite');
        break;
      case 3:
        GoRouter.of(context).pushNamed('profile');
        break;
    }
  }
}
