import 'package:chat/widgets/chatItemWidget.dart';
import 'package:flutter/material.dart';

class ChatListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScrollController listScrollController = new ScrollController();
    return Flexible(
        child: ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemBuilder: (context, index) => ChatItemWidget(index),
      itemCount: 20,
      reverse: true,
      controller: listScrollController,
    ));
  }
}
