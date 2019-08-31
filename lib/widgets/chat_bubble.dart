import 'package:flutter/material.dart';

import 'package:responsive_chat_app/models/message.dart';
import 'package:responsive_chat_app/models/user.dart';
import 'package:responsive_chat_app/widgets/avatar_image_view.dart';

class ChatBubble extends StatelessWidget {
  final Message message;
  final User user;
  final bool isSender;

  const ChatBubble({this.message, this.user, this.isSender});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          // isSender ? Spacer() : _buildImage(context),
          if (isSender)
            Spacer(),
          if (!isSender)
            _buildImage(context),
          Expanded(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(message.text),
                ),
              ),
            ),
          ),
          if (isSender)
            _buildImage(context),
          if (!isSender)
            Spacer(),
        ],
      ),
    );
  }

  _buildImage(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: AvatarImageView(name: user.name, photoUrl: user.photoUrl),
    );
  }
}
