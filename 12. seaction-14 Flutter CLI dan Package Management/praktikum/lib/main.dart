import 'package:flutter/material.dart';
import 'package:praktikum/pages/home_page.dart';
import 'package:praktikum/pages/soal_1.dart';
import 'package:praktikum/pages/soal_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.rootNamed,
      routes: {
        HomePage.rootNamed: (context) => const HomePage(),
        SoalSatu.rootNamed: (context) => const SoalSatu(),
        SoalDua.rootNamed: (context) => SoalDua(),
      },
    );
  }
}
