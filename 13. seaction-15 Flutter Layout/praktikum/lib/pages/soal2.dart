import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:praktikum/provider/get/list_user_service.dart';
import 'package:provider/provider.dart';

class Soal2 extends StatelessWidget {
  const Soal2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetUserListProvider provUserGet =
        Provider.of<GetUserListProvider>(context, listen: false);
    provUserGet.getDataUsers();
    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 70,
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemCount: provUserGet.listUser.length,
      itemBuilder: (BuildContext ctx, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  provUserGet.listUser[index].avatar,
                ),
                fit: BoxFit.fill),
          ),
        );
      },
    );
  }
}
