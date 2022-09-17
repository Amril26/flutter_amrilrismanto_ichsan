import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:praktikum/pages/home/widget/card_item.dart';
import 'package:praktikum/themes/theme.dart';

class HomePageIos extends StatelessWidget {
  const HomePageIos({Key? key}) : super(key: key);

  ObstructingPreferredSizeWidget _headers1() {
    return CupertinoNavigationBar(
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
      middle: const Text('Chats'),
      trailing: CupertinoButton(
        onPressed: () {},
        child: const Icon(
          CupertinoIcons.pencil,
          color: CupertinoColors.activeBlue,
        ),
      ),
    );
  }

  Widget _headers2() {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      padding: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
          color: CupertinoColors.white,
          boxShadow: [BoxShadow(color: CupertinoColors.systemGrey2)]),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: CupertinoColors.systemGrey5,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  CupertinoIcons.search,
                  color: CupertinoColors.systemGrey2,
                ),
                Text(
                  'Search',
                  style: h1.copyWith(
                    color: CupertinoColors.systemGrey2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: Text(
                  'All Chats',
                  style: h1.copyWith(
                    color: CupertinoColors.systemGrey2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {},
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: Text(
                  'Work',
                  style: h1.copyWith(
                    color: CupertinoColors.systemGrey2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {},
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: Text(
                  'Unread',
                  style: h1.copyWith(
                    color: CupertinoColors.systemGrey2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {},
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: Text(
                  'Personal',
                  style: h1.copyWith(
                    color: CupertinoColors.systemGrey2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _listItems() {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        reverse: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const CardItemChating());
  }

  Widget _body() {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          _headers2(),
          _listItems(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        navigationBar: _headers1(),
        child: _body());
  }
}
