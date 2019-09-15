import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chat/pages/conversationPage.dart';

void main(){

  //Verifico que haya en pantalla un ConversationPage

  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ConversationPage(),
    ),
  );

  testWidgets('ConversationPageList UI test', (WidgetTester test) async{

      test.pumpWidget(app);
      expect(find.byType(ConversationPage), findsOneWidget);
      expect(find.byType(PageView), findsOneWidget);
  });
}