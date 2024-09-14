import 'package:e_pharmacy/common/brand_title.dart';
import 'package:e_pharmacy/common/cart_add_remove_widget.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key, this.color, this.size});
  final Color? color;
  final String? size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/21a31d67-31d9-47cd-bb16-23b2d22bc9d0/NIKE+AIR+MAX+SYSTM.png",
                height: 70,
                width: 100,
              ),
              const SizedBox(width: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitle(),
                  const Text(
                    "Nike Sport Shoe",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    // maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  color != null || size != null
                      ? RichText(
                          text: const TextSpan(
                            text: 'Color ',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Green',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(text: '  '),
                              TextSpan(
                                  text: 'Size',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )),
                              TextSpan(text: ' '),
                              TextSpan(
                                  text: 'EU 34',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )
                      : const Text(""),
                ],
              )
            ],
          ),
          const Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(width: 80),
              CartAddRemoveWidget(
                numberOfItem: 2,
                textColor: Colors.black,
              ),
              Spacer(),
              Text(
                "1555 \$",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
