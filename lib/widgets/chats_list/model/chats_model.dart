import 'package:flutter/material.dart';
import 'dart:math';

class ChatsModel {
  final List<ListItem> items = List<ListItem>.generate(
    100,
    (int i) => MessageItem('Чат $i', 'последняя запись $i', i),
  );
}

abstract class ListItem {
  /// The title line to show in a list item.
  void buildId(int id);
  Widget buildAvatar(BuildContext context);
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;
  final int id;
  // final RxBool _isChecked = false.obs;

  MessageItem(this.sender, this.body, this.id);

  @override
  void buildId(int id) {
    print(id);
  }

  @override
  Widget buildAvatar(BuildContext context) => Icon(
        Icons.account_circle,
        size: 50,
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      );

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}
