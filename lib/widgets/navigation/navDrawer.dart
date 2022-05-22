import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:telechat_proto/app/theme/theme_scheme.dart';

// Press the Navigation Drawer button to the left of AppBar to show
// a simple Drawer with two items.
class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text("Uncle Bob"),
      accountEmail: Text("uncle_bob@gmail.com"),
      currentAccountPicture: const CircleAvatar(
        child: FlutterLogo(size: 42.0),
      ),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: Text("Профиль"),
          leading: const Icon(Icons.account_box_outlined),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Ночной/Дневной режимы"),
          leading: const Icon(Icons.dark_mode),
          onTap: () {
            Get.changeTheme(
                Get.isDarkMode ? MyFlexThemeDataLight : MyFlexThemeDataDart);
            Get.back();
          },
        ),
        ListTile(
          title: Text("Языки"),
          leading: const Icon(Icons.language),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Инструкция"),
          leading: const Icon(Icons.integration_instructions),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Связь с разработчиками"),
          leading: const Icon(Icons.games_sharp),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Настройки"),
          leading: const Icon(Icons.settings),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    return Drawer(
      child: drawerItems,
    );
  }
}
