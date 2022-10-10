import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_prov/pages/register_page.dart';
import 'package:praktikum_prov/spref_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterProvider extends ChangeNotifier {
  late bool _isLoading = false;
  bool get isLoading => _isLoading;

  Map<String, dynamic> _data = {};
  Map<String, dynamic> get data => _data;

  validateRegister({
    required String name,
    required String email,
    required String phone,
  }) async {
    _isLoading = true;
    SharedPreferences _sPref = await SharedPreferences.getInstance();

    _sPref.setBool(SprefKey.isLogin, true);
    _sPref.setString(SprefKey.name, name);
    _sPref.setString(SprefKey.email, email);
    _sPref.setString(SprefKey.phone, phone);

    await Future.delayed(const Duration(seconds: 2));
    _isLoading = false;
    notifyListeners();
  }

  logout(BuildContext context) async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.clear();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => RegisterPage()));
  }

  getData() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _data = {
      'name': _pref.getString(SprefKey.name),
      'email': _pref.getString(SprefKey.email),
      'phone': _pref.getString(SprefKey.phone)
    };

    notifyListeners();
  }
}
