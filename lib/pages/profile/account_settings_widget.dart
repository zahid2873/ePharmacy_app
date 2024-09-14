import 'package:e_pharmacy/pages/profile/icon_button_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountSettingsWidget extends StatelessWidget {
  const AccountSettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Account Settings",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        IconButtonItem(
          icon: const Icon(
            Icons.my_location,
            size: 24,
            color: Colors.black,
          ),
          title: "My Address",
          subTitle: "Set shopping delivary address",
          onTap: () =>GoRouter.of(context).pushNamed("address"),
        ),
        IconButtonItem(
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
            size: 24,
          ),
          title: "My Cart",
          subTitle: "Add remove products and move to checkout",
          onTap: () {},
        ),
        IconButtonItem(
          icon: const Icon(
            Icons.shopping_bag,
            color: Colors.black,
            size: 24,
          ),
          title: "My Orders",
          subTitle: "In progress add completed orders",
          onTap: () {},
        ),
        IconButtonItem(
          icon: const Icon(
            Icons.account_circle,
            color: Colors.black,
            size: 24,
          ),
          title: "Bank Accounts",
          subTitle: "Withdraw balance to register bank account",
          onTap: () {},
        ),
        IconButtonItem(
          icon: const Icon(
            Icons.discount,
            color: Colors.black,
            size: 24,
          ),
          title: "My Coupons",
          subTitle: "List off all the discounted coupons",
          onTap: () {},
        ),
        IconButtonItem(
          icon: const Icon(
            Icons.shopping_bag,
            color: Colors.black,
            size: 24,
          ),
          title: "Notifications",
          subTitle: "Set any kind of notifications",
          onTap: () {},
        ),
        IconButtonItem(
          icon: const Icon(
            Icons.shopping_bag,
            color: Colors.black,
            size: 24,
          ),
          title: "Account Privacy",
          subTitle: "Manage data usages and connected accounts",
          onTap: () {},
        ),
      ],
    );
  }
}
