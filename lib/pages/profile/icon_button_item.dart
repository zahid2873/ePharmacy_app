// import 'package:flutter/material.dart';

// class IconButtonItem extends StatelessWidget {
//   const IconButtonItem(
//       {super.key, this.icon, this.title, this.subTitle, this.onTap});
//   final Icon? icon;
//   final String? title;
//   final String? subTitle;
//   final VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 10),
//       child: Material(
//         color: Colors.transparent,
//         borderRadius: BorderRadius.circular(12),
//         child: Ink(
//           height: 90,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: InkWell(
//             borderRadius: BorderRadius.circular(12),
//             onTap: onTap,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   icon ?? const SizedBox.shrink(),
//                   const SizedBox(width: 10),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         title ?? "Title",
//                         style: const TextStyle(
//                             fontSize: 14, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         subTitle ?? "Sub title",
//                         style: const TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class IconButtonItem extends StatelessWidget {
  const IconButtonItem(
      {super.key,
      this.icon,
      this.title,
      this.subTitle,
      this.onTap,
      this.widget = const SizedBox.shrink()});
  final Icon? icon;
  final String? title;
  final String? subTitle;
  final VoidCallback? onTap;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: Ink(
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  icon ?? const SizedBox.shrink(),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title ?? "Title",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                      ),
                      Text(
                        subTitle ?? "Sub title",
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                  const Spacer(),
                  widget,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
