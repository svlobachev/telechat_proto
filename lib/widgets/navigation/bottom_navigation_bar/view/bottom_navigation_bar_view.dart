import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../../../chats_list/model/chats_model.dart';
import '../../../chats_list/view/chats_view.dart';
import '../../../topics_list/model/topics_model.dart';
import '../../../topics_list/view/topics_view.dart';
import '../controller/MyFloatingActionButtonController.dart';
import '../controller/MyTabController.dart';

MyFloatingActionButtonController myFloatingActionButtonController =
    Get.put(MyFloatingActionButtonController());

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({Key? key}) : super(key: key);
  final MyTabController _tabx = Get.put(MyTabController());

  Rx<MaterialColor> _myCollor = Colors.red.obs;
  Image _myIcon = Image.asset(
    'assets/img/icons8-off-80-black.png',
    height: 40,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Obx(() => FloatingActionButton(
            onPressed: () {
              myFloatingActionButtonController.setMyCollor = _myCollor;
              myFloatingActionButtonController.setMyIcon = _myIcon;
              _myCollor = myFloatingActionButtonController.getMyColor;
              _myIcon = myFloatingActionButtonController.getMyIcon;
            },
            elevation: 5,
            backgroundColor: _myCollor.value,
            child: _myIcon,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: GFTabBarView(controller: _tabx.controller, children: <Widget>[
        Container(
          child: ChatsView(
            items: ChatsModel().items,
          ),
        ),
        Container(
          child: const Text(
            'Index 2',
          ),
        ),
        Container(
          child: TopicsView(
            items: TopicsModel().items,
          ),
        ),
      ]),
      bottomNavigationBar: GFTabBar(
        tabBarHeight: 70.0,
        tabBarColor: Theme.of(context).colorScheme.primary,
        indicatorColor: Colors.deepOrange,
        labelColor: Theme.of(context).colorScheme.onPrimary,
        unselectedLabelColor: Theme.of(context).colorScheme.secondaryContainer,

        length: 3,
        controller: _tabx.controller,
        tabs: _tabx.myTabs,
        // tabBarHeight: 70,
      ),
    );
  }
}
