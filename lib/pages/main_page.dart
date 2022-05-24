import 'package:flutter/material.dart';
import 'package:telechat_proto/widgets/navigation/bottom_navigation_bar/view/bottom_navigation_bar_view.dart';
import 'package:telechat_proto/widgets/navigation/myAppBar.dart';
import 'package:telechat_proto/widgets/navigation/navDrawer.dart';

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
