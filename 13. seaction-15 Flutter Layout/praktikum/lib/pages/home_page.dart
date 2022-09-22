import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:praktikum/pages/soal1.dart';
import 'package:praktikum/pages/soal2.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Tab> tabText = <Tab>[Tab(text: 'Soal 1'), Tab(text: 'Soal 2')];

  Widget _body() {
    return const TabBarView(
      children: [
        Soal1(),
        Soal2(),
      ],
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      title: const Text('Flutter Layouting'),
      bottom: TabBar(tabs: tabText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _appBar(),
        body: _body(),
      ),
    );
  }
}
