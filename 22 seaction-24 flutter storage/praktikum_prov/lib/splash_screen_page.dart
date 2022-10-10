import 'dart:async';

import 'package:flutter/material.dart';
import 'package:praktikum_prov/pages/home_page.dart';
import 'package:praktikum_prov/pages/register_page.dart';
import 'package:praktikum_prov/spref_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  late SharedPreferences _pref;

  _isLoginPage() async {
    _pref = await SharedPreferences.getInstance();
    var _isValidate = _pref.getBool(SprefKey.isLogin);
    Timer(const Duration(seconds: 2),
        () => _isValidate != null ? _moveHomePage() : _moveRegister());
  }

  _moveRegister() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => RegisterPage()));
  }

  _moveHomePage() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  void initState() {
    super.initState();
    _isLoginPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/logo-alta.png',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
