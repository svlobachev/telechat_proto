import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFAppBar(
      title: Text('AppBarTitle'.tr),
      actions: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GFIconBadge(
              child: GFIconButton(
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {},
                icon: Icon(Icons.add_alert),
                shape: GFIconButtonShape.circle,
                // iconSize: 20.0,
              ),
              counterChild: GFBadge(
                child: Text("12"),
              ),
            ),
          ),
        ),
        // IconButton(
        //   icon: const Icon(Icons.add_alert),
        //   tooltip: 'Show Snackbar',
        //   onPressed: () {
        //     const SnackBar(content: Text('This is a snackbar'));
        //   },
        // ),
      ],
    );
  }

  // Widget build(BuildContext context) {
  //   return GFAppBar(
  //     leading: GFIconButton(
  //       icon: Icon(
  //         Icons.message,
  //         color: Colors.white,
  //       ),
  //       onPressed: () {},
  //       type: GFButtonType.transparent,
  //     ),
  //     title: Text("GF Appbar"),
  //     actions: <Widget>[
  //       GFIconButton(
  //         icon: Icon(
  //           Icons.favorite,
  //           color: Colors.white,
  //         ),
  //         onPressed: () {},
  //         type: GFButtonType.transparent,
  //       ),
  //     ],
  //   );
  // }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
