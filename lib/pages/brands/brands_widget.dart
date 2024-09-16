// import 'package:e_pharmacy/common/animated_button.dart';
// import 'package:e_pharmacy/common/brand_title.dart';
// import 'package:flutter/material.dart';

// class BrandsWidget extends StatelessWidget {
//   const BrandsWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedButton(
//       child: Container(
//         height: 100,
//         width: 150,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(color: Colors.grey.withOpacity(0.5))),
//         child: Row(
//           children: [
//             Image.network(
//               "https://thumbs.dreamstime.com/b/nike-inc-american-multinational-corporation-engaged-design-development-manufacturing-worldwide-marketing-139136474.jpg",
//               height: 100,
//               width: 60,
//             ),
//             const Column(
//               children: [
//                 BrandTitle(),
//                 Text(
//                   '554 Products',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 14,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
