import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomSnackBar {
  CustomSnackBar(
      BuildContext context, Widget content, MaterialColor currentColor) {
    final SnackBar snackBar = SnackBar(
        action: SnackBarAction(
          label: "labelUndoText".tr,
          textColor: Colors.yellowAccent,
          onPressed: () {
            // Some code to undo the change.
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
        backgroundColor: currentColor,
        content: content,
        behavior: SnackBarBehavior.floating);

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
