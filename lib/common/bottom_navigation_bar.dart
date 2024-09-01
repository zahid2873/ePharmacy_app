import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  // int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        selectedIndex: _calculateSelectedIndex(context),
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
            label: "Favorite",
            icon: FaIcon(
              FontAwesomeIcons.heart,
              size: 20,
            ),
          ),
          NavigationDestination(
            label: "Message",
            icon: FaIcon(
              FontAwesomeIcons.message,
              size: 20,
            ),
          ),
          NavigationDestination(
            label: "Profile",
            icon: FaIcon(
              FontAwesomeIcons.user,
              size: 20,
            ),
          )
        ]);
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
   // print(location);
    if (location.startsWith('/errorScreen')) {
      return 1;
    }
    if (location.startsWith('/loadingScreen')) {
      return 2;
    }
    if (location.startsWith('/login')) {
      return 3;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).pushNamed('homeTab');
        break;
      case 1:
        GoRouter.of(context).pushNamed('errorScreen');
        break;
      case 2:
        GoRouter.of(context).pushNamed('loadingScreen');

        break;
      case 3:
        GoRouter.of(context).pushNamed('login');
        break;
    }
  }
}
