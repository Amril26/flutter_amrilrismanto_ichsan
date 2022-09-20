import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class SoalSatu extends StatelessWidget {
  static String rootNamed = '/soal1';
  const SoalSatu({Key? key}) : super(key: key);

  AppBar _appBar() {
    return AppBar(
      title: const Text('Soal 1'),
    );
  }

  Widget _bodyContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Badge(
            toAnimate: false,
            shape: BadgeShape.square,
            badgeColor: Colors.blue,
            borderRadius: BorderRadius.circular(100),
            padding: const EdgeInsets.all(10),
            badgeContent:
                const Text('BADGE', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(
            height: 10,
          ),
          Badge(
            toAnimate: false,
            shape: BadgeShape.square,
            badgeColor: Colors.blue,
            borderRadius: BorderRadius.circular(100),
            badgeContent:
                const Text('BADGE', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _bodyContent(),
    );
  }
}
