import 'package:flutter/material.dart';
import 'package:praktikum/pages/second_page.dart';
import 'package:praktikum/provider/get/list_user_service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  Widget _body(BuildContext context) {
    context.read<GetUserListProvider>().getDataUsers();
    return Consumer<GetUserListProvider>(
        builder: (context, provUserGet, child) {
      return GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            childAspectRatio: 2 / 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: provUserGet.listUser.length,
        itemBuilder: (BuildContext ctx, index) {
          return InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    DetailImage(urlImage: provUserGet.listUser[index].avatar))),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                      provUserGet.listUser[index].avatar,
                    ),
                    fit: BoxFit.fill),
              ),
            ),
          );
        },
      );
    });
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      title: const Text('Flutter Assets'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _appBar(),
        body: _body(context),
      ),
    );
  }
}
