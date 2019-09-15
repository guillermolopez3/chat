import 'package:flutter_test/flutter_test.dart';
import 'package:chat/main.dart';
import 'package:chat/pages/conversationPageList.dart';

void main(){
  
  testWidgets('Main UI test', (WidgetTester tester) async{
    await tester.pumpWidget(MyApp());
    
    expect(find.byType(ConversationPageList), findsOneWidget);
  });
  
}