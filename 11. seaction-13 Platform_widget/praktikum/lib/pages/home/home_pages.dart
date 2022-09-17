import 'package:flutter/material.dart';
import 'package:praktikum/pages/home/android/home_android.dart';
import 'package:praktikum/pages/home/home_ios.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePageIos();
    // return HomePageAndroid();
  }
}
