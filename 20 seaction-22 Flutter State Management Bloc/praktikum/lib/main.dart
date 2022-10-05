import 'package:flutter/material.dart';
import 'package:praktikum/pages/add_contact.dart';
import 'package:praktikum/pages/home_page.dart';
import 'package:praktikum/providers/contact_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContactsProvider()),
      ],
      child: MaterialApp(
        title: 'State Management',
        initialRoute: HomePage.rootNamed,
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.rootNamed: (context) => const HomePage(),
          AddContact.rootNamed: (context) => AddContact()
        },
      ),
    );
  }
}
