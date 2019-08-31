import 'package:flutter/material.dart';

import 'package:responsive_chat_app/models/conversation.dart';

class ConversationListItem extends StatelessWidget {
  final String userNames;
  final Conversation conversation;

  const ConversationListItem({
    @required this.userNames,
    @required this.conversation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            userNames,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              conversation.lastMessage,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black.withAlpha(150),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
