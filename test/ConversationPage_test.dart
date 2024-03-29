import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chat/pages/ConversationPage.dart';
import 'package:chat/widgets/ChatAppBar.dart';
import 'package:chat/widgets/ChatListWidget.dart';
import 'package:chat/widgets/InputWidget.dart';


//verifico que los widget appBar, inputWidget and ChatList esten en mi pantalla
void main(){

   MaterialApp app = MaterialApp(
    home: Scaffold(
        body:  ConversationPage()
    ),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.byType(ChatAppBar),findsOneWidget);
    expect(find.byType(InputWidget),findsOneWidget);
    expect(find.byType(ChatListWidget),findsOneWidget);


  });
}