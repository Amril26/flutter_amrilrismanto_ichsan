import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Image.asset(
        'assets/logoAR.png',
      ),
      title: const Text(
        'Amril Rismanto Ichsan',
        style: TextStyle(color: Color(0xFF252525)),
      ),
      shadowColor: Colors.transparent,
    );
  }

  _welcomeContent() {
    return Column(
      children: [
        Image.asset(
          'assets/logoAR.png',
          width: 60,
          height: 60,
        ),
        const Text(
          'Welcome Back!',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            color: Color(0XFF252525),
          ),
        )
      ],
    );
  }

  _body() {
    return ListView(
      children: [
        _welcomeContent(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: _body(),
    );
  }
}
