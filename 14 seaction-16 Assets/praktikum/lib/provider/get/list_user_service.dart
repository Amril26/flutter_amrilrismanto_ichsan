import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:praktikum/models/users_model.dart';

class GetUserListProvider extends ChangeNotifier {
  List _listUser = [];
  List get listUser => _listUser;

  getDataUsers() async {
    final response = await rootBundle.loadString('assets/dumy.json');
    final message = json.decode(response);
    _listUser = [];
    for (var item in message) {
      _listUser.add(UsersModel.jsonObject(item));
    }
    notifyListeners();
  }
}
