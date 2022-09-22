import 'package:flutter/material.dart';
import 'package:praktikum/provider/get/list_user_service.dart';
import 'package:provider/provider.dart';

class Soal1 extends StatelessWidget {
  const Soal1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetUserListProvider provUserGet =
        Provider.of<GetUserListProvider>(context, listen: false);
    provUserGet.getDataUsers();

    return ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: provUserGet.listUser.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                provUserGet.listUser[index].avatar,
              ),
            ),
            title: Text(provUserGet.listUser[index].fristName +
                provUserGet.listUser[index].lastName),
            subtitle: Text(provUserGet.listUser[index].email),
          );
        });
  }
}
