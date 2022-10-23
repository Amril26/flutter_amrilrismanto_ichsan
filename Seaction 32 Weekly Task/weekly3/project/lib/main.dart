import 'package:flutter/material.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weekly 2',
      initialRoute: SplashScreenPage.rootNamed,
      routes: {
        SplashScreenPage.rootNamed: (context) => const SplashScreenPage(),
        HomePage.rootNamed: (context) => HomePage(),
      },
    );
  }
}
