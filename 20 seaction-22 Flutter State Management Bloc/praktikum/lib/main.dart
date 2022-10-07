import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum/bloc/bloc/contact_bloc_bloc.dart';
import 'package:praktikum/pages/add_contact.dart';
import 'package:praktikum/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactBlocBloc>(
      create: (context) => ContactBlocBloc(),
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
