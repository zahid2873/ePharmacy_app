import 'package:e_pharmacy/pages/order/order_info_widget.dart';
import 'package:flutter/material.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const OrderInfoWidget(
                title: "Proccessing",
                titleTextStyle: TextStyle(color: Colors.blue, fontSize: 12),
                value: "15 Sept, 2024",
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ))
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OrderInfoWidget(
                title: "Order",
                value: "[#2235]",
                icon: Icon(
                  Icons.airplane_ticket_outlined,
                  size: 20,
                ),
              ),
              OrderInfoWidget(
                title: "Shipping Date",
                value: "20 Sept, 2024",
                icon: Icon(
                  Icons.calendar_month,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
