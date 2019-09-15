import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chat/widgets/ChatAppBar.dart';


//verifico la pantalla del chat
void main(){
   MaterialApp app = MaterialApp(
    home: Scaffold(
        body:  ChatAppBar()
    ),
  );
  testWidgets('ChatAppBar UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
          body:  ChatAppBar()
      ),
    ));

    expect(find.text('Aditya Gurjar'), findsOneWidget);
    expect(find.text('@adityagurjar'), findsOneWidget);
    expect(find.byType(IconButton),findsNWidgets(1));
    expect(find.byType(CircleAvatar),findsOneWidget);
  });
}