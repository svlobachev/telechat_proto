import 'package:flutter/material.dart';
import '../widgets/navigation/bottom_navigation_bar/view/bottom_navigation_bar_view.dart';
import '../widgets/navigation/myAppBar.dart';
import '../widgets/navigation/navDrawer.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        drawer: NavDrawer(),
        body: Scaffold(
          bottomNavigationBar: MyBottomNavigationBar(),
        ));
  }
}
