import 'package:flutter/material.dart';
import 'package:praktikum_prov/pages/register_page.dart';
import 'package:praktikum_prov/providers/register_provider.dart';
import 'package:praktikum_prov/splash_screen_page.dart';
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
        ChangeNotifierProvider<RegisterProvider>(
            create: (context) => RegisterProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreenPage(),
      ),
    );
  }
}
