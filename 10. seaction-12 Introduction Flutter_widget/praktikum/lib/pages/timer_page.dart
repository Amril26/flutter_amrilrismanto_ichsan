import 'dart:async';

import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  int _hourse = 0;
  int _minute = 0;
  int _second = 0;

  void _timerView() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _second++;
        if (_second == 60) {
          _minute++;
          _second = 0;
        } else if (_minute == 60) {
          _hourse++;
          _minute = 0;
        } else if (_hourse == 24) {
          _hourse = 0;
          _minute = 0;
          _second = 0;
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _timerView();
  }

  _appBar() {
    return AppBar(
      title: Text(widget.title),
    );
  }

  _bodyContent() {
    return Center(
      child: Text('$_hourse:$_minute:$_second',
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          )),
    );
  }

  // NOTE: CORE CODE
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _bodyContent(),
    );
  }
}
