import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:praktikum/pages/home/widget/card_item.dart';
import 'package:praktikum/themes/theme.dart';

class HomePageIos extends StatelessWidget {
  const HomePageIos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border(),
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
      ),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              padding: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                  color: CupertinoColors.white,
                  boxShadow: [BoxShadow(color: CupertinoColors.systemGrey2)]),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
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
                    height: 10,
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
            ),
            ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                reverse: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => const CardItemChating())
          ],
        ),
      ),
    );
  }
}
