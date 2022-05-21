import 'package:telechat_proto/pages/main_page.dart';
import 'package:telechat_proto/pages/login_page.dart';
import 'package:flutter/material.dart';

// var myRoutes = {
//   '/': (context) => const MyLogin(),
//   '/home': (context) => const MainPage(),
// };

class RouteManager {
  static const String loginPage = '/';
  static const String mainPage = '/mainPage';
  // static const String settingsPage = '/settingsPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const MyLogin(),
          // builder: (context) => MyBottomNavigationBar(),
        );

      case mainPage:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
        );

      default:
        throw const FormatException('Route not found! Check routes again!');
    }
  }
}
