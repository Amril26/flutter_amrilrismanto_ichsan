import 'package:flutter/material.dart';
import 'package:praktikum_stf/pages/add_contact.dart';
import 'package:praktikum_stf/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management',
      initialRoute: HomePage.rootNamed,
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.rootNamed: (context) => const HomePage(),
        AddContact.rootNamed: (context) => AddContact()
      },
    );
  }
}
