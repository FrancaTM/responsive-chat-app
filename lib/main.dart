import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:responsive_chat_app/chat_list_page.dart';
import 'package:responsive_chat_app/conversation_page.dart';
import 'package:responsive_chat_app/models/chat_app.dart';
import 'package:responsive_chat_app/models/conversation.dart';
import 'demo/demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final chatProvider = ChatApp(Demo.conversation, Demo.users);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: chatProvider),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Color(0xff006837),
            primaryColorDark: Color(0xff004012),
            accentColor: Color(0xffc75f00)),
        home: ChatListPage(),
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) {
              return _makeRoute(
                context: context,
                routeName: settings.name,
                arguments: settings.arguments,
              );
            },
            maintainState: true,
            fullscreenDialog: false,
          );
        },
      ),
    );
  }

  Widget _makeRoute({
    @required BuildContext context,
    @required String routeName,
    Object arguments,
  }) {
    final Widget child = _buildRoute(
        context: context, routeName: routeName, arguments: arguments);
    return child;
  }

  _buildRoute({
    @required BuildContext context,
    @required String routeName,
    Object arguments,
  }) {
    switch (routeName) {
      case '/chat':
        var map = arguments as Map<String, dynamic> ?? Map();
        int index = map['index'] as int;
        Conversation conversation = chatProvider.conversations[index];

        return MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: chatProvider),
          ],
          child: ConversationPage(
            conversation: conversation,
            isDetail: false,
          ),
        );
    }
  }
}
