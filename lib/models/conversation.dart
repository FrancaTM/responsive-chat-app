import 'message.dart';

class Conversation {
  final List<Message> messages;

  Conversation(this.messages);

  List<String> get senderIds =>
      messages.map((m) => m.senderId).toSet().toList();

  get lastMessage => messages.last.text;
}
