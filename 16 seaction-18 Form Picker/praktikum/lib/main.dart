import 'package:flutter/material.dart';
import 'package:praktikum/pages/detail_page.dart';
import 'package:praktikum/pages/home_page.dart';
import 'package:praktikum/providers/picker_file_provider.dart';
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
        ChangeNotifierProvider<PickerProvider>(
            create: (context) => PickerProvider()),
      ],
      child: MaterialApp(
        title: 'Preview Post',
        initialRoute: HomePage.rootNamed,
        routes: {
          HomePage.rootNamed: (context) => HomePage(),
          DetailPostPage.rootNamed: (context) => const DetailPostPage()
        },
      ),
    );
  }
}
