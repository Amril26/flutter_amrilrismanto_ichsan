import 'package:flutter/cupertino.dart';
import 'package:praktikum/pages/home/ios/empty_page.dart';
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
      label: 'Chats',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.settings),
      label: 'Settings',
    ),
  ];

  Widget _indexPages({required int index}) => index == 0
      ? const EmptyPage(namePage: 'Contacs')
      : index == 1
          ? const EmptyPage(namePage: 'Calls')
          : index == 2
              ? const HomePageIos()
              : const EmptyPage(namePage: 'Settings');

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
