import 'package:chat/widgets/chatListWidget.dart';
import 'package:chat/widgets/inputWidget.dart';
import 'package:flutter/material.dart';
import '../widgets/chatAppBar.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ChatAppBar(),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                ChatListWidget(),
                InputWidget()
              ],
            )
          ],
        ),
      ),
    );
  }
}
