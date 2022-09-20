import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:praktikum/pages/soal_1.dart';
import 'package:praktikum/pages/soal_2.dart';

class HomePage extends StatelessWidget {
  static String rootNamed = '/';
  const HomePage({Key? key}) : super(key: key);

  _appBar() {
    return AppBar(
      title: Text('Flutter CLI & State Management'),
    );
  }

  _bodyContent(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SoalSatu.rootNamed);
            },
            child: const Text(
              'Soal 1',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SoalDua.rootNamed);
            },
            child: const Text('Soal 2', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _bodyContent(context),
    );
  }
}
