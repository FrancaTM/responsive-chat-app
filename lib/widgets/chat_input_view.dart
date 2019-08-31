import 'package:flutter/material.dart';

class ChatInputView extends StatelessWidget {
  final Function(bool) onShowGallery;

  const ChatInputView({this.onShowGallery});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            IconButton(
              alignment: Alignment.center,
              icon: Icon(Icons.attach_file),
              onPressed: () => _showGallery(context),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: null,
                  hintText: 'Type your thoughts here',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _send(context),
            ),
          ],
        ),
      ),
    );
  }

  _showGallery(BuildContext context) {
    onShowGallery(true);
  }

  _send(BuildContext context) {
    Alerts.showTBI(context);
  }
}

class Alerts {
  static showTBI(BuildContext context) {
    showAlert(context, 'To be implemented');
  }

  static showAlert(BuildContext context, String text,
      [VoidCallback onPressed]) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(text),
        actions: <Widget>[
          FlatButton(
            onPressed: onPressed ?? () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
