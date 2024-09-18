import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class Utils {
  
  static void showSheet(
    BuildContext context, {
    required Widget child,
    required VoidCallback onClicked,
  }) =>
      showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
          actions: [
            child,
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: ()=>GoRouter.of(context).pop(),
            child: const Text('Done'),
          ),
        ),
      );

}