import 'package:flutter/material.dart';
import 'package:praktikum/pages/timer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Introduction Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TimerPage(title: 'Flutter Widget'),
    );
  }
}
