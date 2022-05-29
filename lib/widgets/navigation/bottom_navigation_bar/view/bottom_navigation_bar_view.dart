import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:telechat_proto/widgets/chats_list/model/chats_model.dart';
import 'package:telechat_proto/widgets/chats_list/view/chats_view.dart';
import 'package:telechat_proto/widgets/navigation/floating_action_button_view/controller/my_floating_action_button_controller.dart';
import 'package:telechat_proto/widgets/navigation/bottom_navigation_bar/controller/my_tab_controller.dart';
import 'package:telechat_proto/widgets/navigation/floating_action_button_view/view/floating_action_button_view.dart';
import 'package:telechat_proto/widgets/topics_list/model/topics_model.dart';
import 'package:telechat_proto/widgets/topics_list/view/topics_view.dart';

MyFloatingActionButtonController myFloatingActionButtonController =
    Get.put(MyFloatingActionButtonController());

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({Key? key}) : super(key: key);
  final MyTabController _tabx = Get.put(MyTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: GFTabBarView(controller: _tabx.controller, children: <Widget>[
        Container(
          child: ChatsView(
            items: ChatsModel().items,
          ),
        ),
        Container(
          child: GFLoader(type: GFLoaderType.circle),
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
        indicatorWeight: 5.0,
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
