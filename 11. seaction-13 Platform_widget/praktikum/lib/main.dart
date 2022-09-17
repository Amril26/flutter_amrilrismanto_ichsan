import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum/pages/home/android/home_android.dart';
import 'package:praktikum/pages/home/home_pages.dart';
import 'package:praktikum/pages/home/ios/curent_index_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageAndroid(),
    );
    // return CupertinoApp(
    //   debugShowCheckedModeBanner: false,
    //   // theme: ThemeData(
    //   //   primarySwatch: Colors.blue,
    //   // ),
    //   home: CurentIndexPages(),
    // );
  }
}
