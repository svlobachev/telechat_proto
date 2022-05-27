import 'package:flutter/material.dart';
import 'package:get/get.dart';

// AppBar MyAppBar = AppBar(
//   title: const Text('AppBar'),
//   actions: <Widget>[
//     IconButton(
//       icon: const Icon(Icons.add_alert),
//       tooltip: 'Show Snackbar',
//       onPressed: () {
//         const SnackBar(content: Text('This is a snackbar'));
//       },
//     ),
//     IconButton(
//       icon: const Icon(Icons.navigate_next),
//       tooltip: 'Go to the next page',
//       onPressed: () {
//         const SnackBar(content: Text('This is a Icon'));
//       },
//     ),
//   ],
// );

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('AppBarTitle'.tr),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
            const SnackBar(content: Text('This is a snackbar'));
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
