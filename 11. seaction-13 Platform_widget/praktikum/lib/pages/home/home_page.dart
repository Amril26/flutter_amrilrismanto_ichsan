import 'package:flutter/material.dart';
import 'package:praktikum/pages/home/widget/menu_btn.dart';
import 'package:praktikum/themes/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'http://4.bp.blogspot.com/-SBoY_wFmpho/UQED-yt2ubI/AAAAAAAAFKk/e0ABVndTMvA/s1600/Air_Terjun_Dan_Sungai_Hijau.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://cdnb.artstation.com/p/assets/images/images/046/671/191/small/taryn-volk-kilua-export-2.jpg?1645661781',
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Amril Rismanto Ichsan',
                    style: h1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '+62 970-2043-2121',
                    style: p1.copyWith(color: Colors.grey),
                  )
                ],
              ),
            ),
            MenuBtn(
              onTap: () {
                print('berhasil membuat group');
              },
              icon: Icons.group,
              btnTitle: 'New Group',
            ),
            MenuBtn(
              onTap: () {
                print('berhasil membuat group');
              },
              icon: Icons.lock,
              btnTitle: 'New Secret Chat',
            ),
            MenuBtn(
              onTap: () {
                print('berhasil membuat group');
              },
              icon: Icons.group,
              btnTitle: 'New Channel',
            ),
            const SizedBox(
              height: 10,
            ),
            MenuBtn(
              onTap: () {
                print('berhasil membuat group');
              },
              icon: Icons.contacts,
              btnTitle: 'Contacts',
            ),
            MenuBtn(
              onTap: () {
                print('berhasil membuat group');
              },
              icon: Icons.person_add,
              btnTitle: 'Invite Friends',
            ),
            MenuBtn(
              onTap: () {
                print('berhasil membuat group');
              },
              icon: Icons.settings,
              btnTitle: 'Settings',
            ),
            MenuBtn(
              onTap: () {
                print('berhasil membuat group');
              },
              icon: Icons.help,
              btnTitle: 'Telegram DAQ',
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Telegram'),
        actions: [
          IconButton(
              onPressed: () {
                print('seacrh name');
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
