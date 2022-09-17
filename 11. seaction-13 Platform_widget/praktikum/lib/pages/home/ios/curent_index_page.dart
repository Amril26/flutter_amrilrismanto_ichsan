import 'package:flutter/cupertino.dart';
import 'package:praktikum/pages/home/ios/home_ios.dart';

class CurentIndexPages extends StatelessWidget {
  CurentIndexPages({Key? key}) : super(key: key);
  final List<BottomNavigationBarItem> itemTab = [
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person_circle),
      label: 'Contacts',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.phone),
      label: 'Calls',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.chat_bubble_2),
      label: 'Calls',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.settings),
      label: 'Calls',
    ),
  ];

  Widget _indexPages({required int index}) => index == 0
      ? Container(
          color: CupertinoColors.systemRed,
        )
      : index == 1
          ? Container(
              color: CupertinoColors.activeBlue,
            )
          : index == 2
              ? const HomePageIos()
              : Container(
                  color: CupertinoColors.systemYellow,
                );

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      backgroundColor: CupertinoColors.white,
      tabBar: CupertinoTabBar(
        items: itemTab,
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
            builder: (context) => _indexPages(index: index));
      },
    );
  }
}
