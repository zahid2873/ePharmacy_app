import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

alertDialog({
  required BuildContext context,
  String? title,
  String? cancelTitle,
  String? confirmTitle,
  VoidCallback? confirmAction,
  VoidCallback? cancelAction,
  bool isOnlyCancel = false,
}) async {
  return await showAdaptiveDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog.adaptive(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Theme.of(context).canvasColor,
        title: Center(
            child: Text(
          "$title",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        )),
        actions: [
          adaptiveAction(
            context: context,
            onPressed: () {
              Navigator.pop(context);
              cancelAction?.call();
            },
            child: Text(
              "$cancelTitle",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          !isOnlyCancel
              ? adaptiveAction(
                  context: context,
                  onPressed: () {
                    Navigator.pop(context);
                    confirmAction?.call();
                  },
                  child: Text(
                    "$confirmTitle",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      );
    },
  );
}

Widget adaptiveAction(
    {required BuildContext context,
    required VoidCallback onPressed,
    required Widget child}) {
  final ThemeData theme = Theme.of(context);
  switch (theme.platform) {
    case TargetPlatform.iOS:
      return CupertinoDialogAction(onPressed: onPressed, child: child);
    default:
      return TextButton(onPressed: onPressed, child: child);
  }
}
