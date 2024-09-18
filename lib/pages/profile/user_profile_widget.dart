import 'package:e_pharmacy/pages/login/controller/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UserProfileWidget extends ConsumerWidget {
  const UserProfileWidget({
    super.key,
    this.padding,
    this.textStyle,
    this.isEmailShow = true,
    this.trailing,
  });
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final bool isEmailShow;
  final Widget? trailing;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authUser = ref.watch(authProvider).user;
    final userStream = ref.watch(userProvider(authUser.id)).value;
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  userStream?.profileImg ??
                      "https://static.vecteezy.com/system/resources/previews/005/129/844/non_2x/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg",
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userStream?.name ?? "Anonymous",
                    style: textStyle ??
                        const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                  isEmailShow
                      ? Text(
                          userStream?.email ?? "",
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        )
                      : const SizedBox.shrink()
                ],
              )
            ],
          ),
          trailing ??
              IconButton(
                onPressed: () => GoRouter.of(context).goNamed("updateProfile"),
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 20,
                ),
              ),
        ],
      ),
    );
  }
}
