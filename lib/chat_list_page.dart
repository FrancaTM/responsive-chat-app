import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_chat_app/models/conversation.dart';

import 'conversation_page.dart';
import 'models/chat_app.dart';
import 'models/user.dart';
import 'widgets/conversation_list_item.dart';

class ChatListPage extends StatefulWidget {
  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }

  _buildList(BuildContext context, bool hasDetailPage) {
    var chat = Provider.of<ChatApp>(context);

    return ListView.separated(
      itemCount: chat.conversations.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.black.withAlpha(50),
      ),
      itemBuilder: (context, index) {
        Conversation conversation = chat.conversations[index];

        List<User> users =
            conversation.senderIds.map((id) => chat.users[id]).toList();
        String userNames = users.map((user) => user.name).join(", ");

        return GestureDetector(
          onTap: () {
            if (hasDetailPage) {
              setState(() {
                _selectedIndex = index;
              });
            } else {
              Navigator.pushNamed(
                context,
                "/chat",
                arguments: {'index': index},
              );
            }
          },
          child: ConversationListItem(
              userNames: userNames, conversation: conversation),
        );
      },
    );
  }

  _buildChat(BuildContext context, int index) {
    var chat = Provider.of<ChatApp>(context);

    Conversation conversation = chat.conversations[index];

    return Container(
      color: Colors.black.withAlpha(10),
      child: ConversationPage(
        isDetail: true,
        conversation: conversation,
      ),
    );
  }
}
