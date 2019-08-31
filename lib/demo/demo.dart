import 'package:responsive_chat_app/models/conversation.dart';
import 'package:responsive_chat_app/models/message.dart';
import 'package:responsive_chat_app/models/user.dart';

class Demo {
  static List<Conversation> conversation = [
    Conversation([
      Message(
          text: 'Hello, is this a Flutter tutorial?',
          senderId: 'android',
          timestamp: DateTime.now().subtract(Duration(days: 2))),
      Message(
          text: 'No, this is Patrick',
          senderId: 'swift',
          timestamp: DateTime.now().subtract(Duration(days: 1))),
      Message(
          text: 'Hello, is this a Flutter tutorial?',
          senderId: 'android',
          timestamp: DateTime.now().subtract(Duration(days: 2))),
      Message(
          text: 'No, this is Patrick..',
          senderId: 'swift',
          timestamp: DateTime.now().subtract(Duration(days: 1))),
      Message(
          text: 'Hello, is this a Flutter tutorial?',
          senderId: 'android',
          timestamp: DateTime.now().subtract(Duration(days: 2))),
      Message(
          text: 'No, this is Patrick!',
          senderId: 'swift',
          timestamp: DateTime.now().subtract(Duration(days: 1))),
      Message(
          text: 'Calm down peeps :)',
          senderId: 'you',
          timestamp: DateTime.now().subtract(Duration(days: 1))),
    ]),
    Conversation(
      [
        Message(
            text: 'Hello, can i go through this road here?',
            senderId: 'swift',
            timestamp: DateTime.now().subtract(Duration(days: 2))),
        Message(
            text: 'You shall not pass ;)',
            senderId: 'android',
            timestamp: DateTime.now().subtract(Duration(days: 1))),
        Message(
            text: 'Just kidding of course you can.',
            senderId: 'android',
            timestamp: DateTime.now().subtract(Duration(days: 1))),
      ],
    ),
    Conversation(
      [
        Message(
            text: 'Who lives in a pineapple under the sea',
            senderId: 'swift',
            timestamp: DateTime.now().subtract(Duration(days: 2))),
        Message(
            text: 'Spongebob Squarepants!',
            senderId: 'android',
            timestamp: DateTime.now().subtract(Duration(days: 1))),
        Message(
            text: 'Absorbent and yellow and porous is he',
            senderId: 'swift',
            timestamp: DateTime.now().subtract(Duration(days: 1))),
        Message(
            text: 'Spongebob Squarepants!',
            senderId: 'android',
            timestamp: DateTime.now().subtract(Duration(days: 1))),
        Message(
            text: 'If nautical nonsense be something you wish!',
            senderId: 'swift',
            timestamp: DateTime.now().subtract(Duration(days: 1))),
        Message(
            text: 'Spongebob Squarepants!',
            senderId: 'android',
            timestamp: DateTime.now().subtract(Duration(days: 1))),
        Message(
            text: 'Then drop on the deck and flop like a fish!',
            senderId: 'swift',
            timestamp: DateTime.now().subtract(Duration(days: 1))),
        Message(
            text:
                'Spongebob Squarepants! Spongebob Squarepants! Spongebob Squarepants! Spongebob Squarepants! Spongebob Squarepants! Spongebob Squarepants!',
            senderId: 'android',
            timestamp: DateTime.now().subtract(Duration(days: 1))),
      ],
    ),
  ];

  static Map<String, User> users = {
    'swift': User(id: 'swift', name: 'Swift Macky', photoUrl: ''),
    'android': User(id: 'android', name: 'Android Googler', photoUrl: ''),
    'you': User(id: 'you', name: 'You D. Best', photoUrl: ''),
  };
}
