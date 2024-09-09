import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TabBarWidget({
    super.key,
    required this.tabs,
  });
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue[300],
      child: TabBar(
          padding: const EdgeInsets.all(0),
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          indicatorColor: Colors.blue,
          tabs: tabs),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight - 8);
}
