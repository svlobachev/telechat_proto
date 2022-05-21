import 'package:flutter/material.dart';
import 'package:telechat_proto/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:telechat_proto/widgets/navigation/floatingActionButton.dart';
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
