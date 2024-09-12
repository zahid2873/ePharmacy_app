import 'package:flutter/material.dart';

class LinearRatingWidget extends StatelessWidget {
  const LinearRatingWidget({super.key, this.rating, this.value});
  final int? rating;
  final double? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              rating.toString(),
              style: const TextStyle(color: Colors.black, fontSize: 12),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 11,
              child: SizedBox(
                //width: 10,
                height: 6,
                child: LinearProgressIndicator(
                  value: value,
                  color: Colors.green,
                  backgroundColor: Colors.grey,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
