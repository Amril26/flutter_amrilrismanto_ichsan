import 'package:flutter/foundation.dart';
import 'package:project/models/message_model.dart';

class AddMessageProviders extends ChangeNotifier {
  List<UserMessage> _dataMessage = [];
  List<UserMessage> get dataMessage => _dataMessage;

  void getDataMessage() {
    _dataMessage = _dataMessage;
    notifyListeners();
  }

  void addMessage({required String name, required String description}) {
    _dataMessage.add(UserMessage(name: name, description: description));
    notifyListeners();
  }
}
