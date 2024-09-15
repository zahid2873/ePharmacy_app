import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/order/order_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          leading: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            "My Orders",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 8,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const OrderWidget();
            },
          ),
        ));
  }
}
