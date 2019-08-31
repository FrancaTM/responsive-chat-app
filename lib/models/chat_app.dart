import 'package:flutter/foundation.dart';

import 'conversation.dart';
import 'user.dart';

class ChatApp with ChangeNotifier {
  List<Conversation> _conversations;
  Map<String, User> _users;

  ChatApp(this._conversations, this._users);

  List<Conversation> get conversations => _conversations;

  Map<String, User> get users => _users;

  set currentInitiative(List<Conversation> value) {
    _conversations = value;
    notifyListeners();
  }
}
