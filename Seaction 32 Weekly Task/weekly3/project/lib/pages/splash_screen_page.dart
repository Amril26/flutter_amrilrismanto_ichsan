import 'package:flutter/material.dart';
import 'package:project/helper/themes.dart';
import 'package:project/pages/home_page.dart';

class SplashScreenPage extends StatefulWidget {
  static String rootNamed = '/';
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      (const Duration(seconds: 3)),
      () {
        Navigator.pushNamed(context, HomePage.rootNamed);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/logoAR.png',
              height: 125,
              color: colorPrimary,
            ),
            const Spacer(),
            Text(
              'Amril Rismanto Ichsan',
              style: gf1.copyWith(
                  color: colorPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
