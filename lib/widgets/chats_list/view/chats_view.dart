import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:telechat_proto/widgets/chats_list/model/chats_model.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key, required this.items}) : super(key: key);
  final List<ListItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 0,
          // color: Colors.blueGrey,
          thickness: 0,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final ListItem item = items[index];
          return ListTile(
            leading: item.buildAvatar(context),
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
            onTap: () {
              Get.toNamed('/chat_view', arguments: 'Get is the best');
            },
          );
        },
      ),
    );
  }
}
