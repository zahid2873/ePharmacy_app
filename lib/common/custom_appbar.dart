import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.leading,
      this.title,
      this.backgroundColor,
      this.action,
      this.isCenterTitle = false})
      : preferredSize = const Size.fromHeight(kToolbarHeight);
  final Widget? leading;
  final Widget? title;
  @override
  final Size preferredSize;
  final Color? backgroundColor;
  final Widget? action;
  final bool isCenterTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leading,
      title: title,
      elevation: 0,
      scrolledUnderElevation: 2,
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: backgroundColor ?? Colors.transparent,
      surfaceTintColor: Colors.transparent,
      centerTitle: isCenterTitle,
      actions: [
        Padding(padding: const EdgeInsets.only(right: 8), child: action)
      ],
    );
  }
}
