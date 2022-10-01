import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:praktikum/models/contacts_model.dart';
import 'package:praktikum/themes/style_all.dart';

class ContactsProvider extends ChangeNotifier {
  List _listContacts = [];
  List get listContacts => _listContacts;

  getDataContacts() {
    _listContacts = _listContacts;
    notifyListeners();
  }

  addCOntact(BuildContext context,
      {required String name, required String nomor}) {
    if (name != '' && nomor != '') {
      _listContacts.add(ContactsModel(name: name, nomor: nomor));
      Navigator.pop(context);
      ScaffoldMessenger(
        child: SnackBar(
          backgroundColor: Colors.green,
          content: Text(
            'Berhasil nenambahkan nomor',
            style: h2.copyWith(color: Colors.white),
          ),
        ),
      );
    } else {
      ScaffoldMessenger(
        child: SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Gagal nenambahkan nomor',
            style: h2.copyWith(color: Colors.white),
          ),
        ),
      );
    }
  }
}
