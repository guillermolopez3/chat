import 'package:chat/widgets/chatListWidget.dart';
import 'package:chat/widgets/conversationBottomSheet.dart';
import 'package:chat/widgets/inputWidget.dart';
import 'package:flutter/material.dart';
import '../widgets/chatAppBar.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); //sirve para mostrar el botonsheet modal

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: ChatAppBar(),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                ChatListWidget(),
                //onPanUpdate devuelve el gesto del usuario, dy>0 swipe up, dy<0 swipe down
                GestureDetector(
                  child: InputWidget(),
                  onPanUpdate: (details){
                    if(details.delta.dy < 0){
                      _scaffoldKey.currentState.showBottomSheet<Null>((BuildContext context){
                        return ConversationBottomSheet();
                      });
                    }
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
