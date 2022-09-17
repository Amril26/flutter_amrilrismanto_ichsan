import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum/themes/theme.dart';

class EmptyPage extends StatelessWidget {
  final String namePage;
  const EmptyPage({Key? key, required this.namePage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: const Border(),
        brightness: Brightness.light,
        leading: TextButton(
          onPressed: () {},
          child: Text(
            'Edit',
            style: p1.copyWith(
              color: CupertinoColors.activeBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        middle: Text(namePage),
        trailing: CupertinoButton(
          onPressed: () {},
          child: const Icon(
            CupertinoIcons.pencil,
            color: CupertinoColors.activeBlue,
          ),
        ),
      ),
      child: Center(child: Text(namePage)),
    );
  }
}
