import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telechat_proto/widgets/chats_list/model/chats_model.dart';
import 'package:telechat_proto/widgets/chats_list/view/chats_view.dart';
import 'package:telechat_proto/widgets/navigation/bottom_navigation_bar/controller/MyFloatingActionButtonController.dart';
import 'package:telechat_proto/widgets/topics_list/model/topics_model.dart';
import 'package:telechat_proto/widgets/topics_list/view/topics_view.dart';

MyFloatingActionButtonController myFloatingActionButtonController =
    Get.put(MyFloatingActionButtonController());

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({Key? key}) : super(key: key);

  final RxInt _selectedIndex = 0.obs;

  Rx<MaterialColor> _myCollor = Colors.red.obs;
  Image _myIcon = Image.asset(
    'assets/img/icons8-off-80-black.png',
    height: 40,
  );

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    ChatsView(
      items: ChatsModel().items,
    ),
    Text(
      'Index 2',
      style: optionStyle,
    ),
    TopicsView(
      items: TopicsModel().items,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      _selectedIndex.value = index;
    }

    return Obx(() => Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // myFloatingActionButtonController.setContext = context;
              myFloatingActionButtonController.setMyCollor = _myCollor;
              myFloatingActionButtonController.setMyIcon = _myIcon;
              _myCollor = myFloatingActionButtonController.getMyColor;
              _myIcon = myFloatingActionButtonController.getMyIcon;
            },
            elevation: 5,
            backgroundColor: _myCollor.value,
            child: _myIcon,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex.value),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble),
                label: 'chats'.tr,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.radar),
                label: 'radar'.tr,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.theater_comedy),
                label: "myTopics".tr,
              ),
            ],
            currentIndex: _selectedIndex.value,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        ));
  }
}
