import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/chat_app.dart';
import 'models/conversation.dart';
import 'widgets/chat_bubble.dart';
import 'widgets/chat_input_view.dart';
import 'widgets/square_gallery.dart';

class ConversationPage extends StatefulWidget {
  final Conversation conversation;
  final bool isDetail;

  const ConversationPage({this.conversation, this.isDetail});

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  var _isGalleryVisible = false;

  @override
  Widget build(BuildContext context) {
    var chat = Provider.of<ChatApp>(context);

    return Scaffold(
      appBar: !widget.isDetail
          ? AppBar(
              title: Text('Chat'),
            )
          : null,
      body: Container(
        color: Colors.black.withAlpha(10),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: widget.conversation.messages.length,
                itemBuilder: (context, index) {
                  var message = widget.conversation.messages.toList()[index];
                  var user = chat.users[message.senderId];

                  return ChatBubble(
                    isSender: message.senderId == 'swift',
                    message: message,
                    user: user,
                  );
                },
              ),
            ),
            if (!_isGalleryVisible)
              ChatInputView(
                onShowGallery: (isVisible) => {
                  setState(() {
                    _isGalleryVisible = true;
                  })
                },
              ),
            if (_isGalleryVisible) _buildGalleryToolbar(context),
            if (_isGalleryVisible)
              AspectRatio(
                aspectRatio: 3,
                child: SquareGallery(),
              ),
          ],
        ),
      ),
    );
  }

  _buildGalleryToolbar(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                setState(() {
                  _isGalleryVisible = false;
                });
              }),
        ],
      ),
    );
  }
}
