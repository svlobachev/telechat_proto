import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:telechat_proto/widgets/chats_list/controller/chats_controller.dart';
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
  List<Color> colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = Random();
  late int randomNumber; //

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
          child: Column(
            children: [
              GFListTile(
                avatar: GFIconBadge(
                  position: GFBadgePosition.bottomEnd(),
                  counterChild: GFBadge(
                    shape: GFBadgeShape.circle,
                    size: 30.0,
                    color: Colors.green,
                    // colors[random.nextInt(2)], // from 0 upto 99 included,
                    // child: Text(random.nextInt(25).toString()),
                  ),
                  child: GFIconButton(
                    type: GFButtonType.transparent,
                    shape: GFIconButtonShape.circle,

                    onPressed: () => GetToNamed().getToNamed,
                    icon: Icon(
                      Icons.account_circle,
                      size: 50,
                      color: Colors.purple,
                    ),
                    // type: GFType.outline,
                  ),
                ),
                titleText: 'Максим',
                subTitleText: 'Возраст: 23; Расстояние: 1576 м.',
                icon: Icon(Icons.add_circle_outline_outlined),
              ),
              GFLoader(type: GFLoaderType.circle),
            ],
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
