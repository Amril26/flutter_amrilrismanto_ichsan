import 'package:flutter/material.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/message_clients_page.dart';
import 'package:project/pages/splash_screen_page.dart';
import 'package:project/providers/add_message_provider.dart';
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
        ChangeNotifierProvider<AddMessageProviders>(
            create: (context) => AddMessageProviders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weekly 2',
        initialRoute: SplashScreenPage.rootNamed,
        routes: {
          SplashScreenPage.rootNamed: (context) => const SplashScreenPage(),
          HomePage.rootNamed: (context) => HomePage(),
          MessageClientPage.rootNamed: (context) => const MessageClientPage(),
        },
      ),
    );
  }
}
