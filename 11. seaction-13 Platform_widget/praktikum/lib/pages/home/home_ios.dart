import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:praktikum/themes/theme.dart';

class HomePageIos extends StatelessWidget {
  const HomePageIos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
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
          middle: const Text('Chats'),
          trailing: CupertinoButton(
            onPressed: () {},
            child: const Icon(
              CupertinoIcons.pencil,
              color: CupertinoColors.activeBlue,
            ),
          )),
      child: Container()
      // TabBarView(
      //   children: [
      //     Text(
      //       'Edit',
      //       style: p1.copyWith(
      //         color: CupertinoColors.systemRed,
      //         fontWeight: FontWeight.w600,
      //       ),
      //     ),
      //     Text(
      //       'Edit',
      //       style: p1.copyWith(
      //         color: CupertinoColors.activeBlue,
      //         fontWeight: FontWeight.w600,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
