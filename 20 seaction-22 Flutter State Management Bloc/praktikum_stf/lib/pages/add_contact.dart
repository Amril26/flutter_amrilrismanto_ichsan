import 'package:flutter/material.dart';
import 'package:praktikum_stf/models/contacts_model.dart';
import 'package:praktikum_stf/themes/style_all.dart';

class AddContact extends StatelessWidget {
  static String rootNamed = '/add-contacts';
  AddContact({Key? key}) : super(key: key);
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerNomor = TextEditingController();

  _createNewContact() {
    return AppBar(
      title: const Text('Create New Contact'),
    );
  }

  _bodyContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.person,
            color: Colors.blue,
            size: 150,
          ),
          TextFormField(
            controller: _controllerName,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.person,
                color: Colors.blue,
              ),
              hintText: 'Maskan Nama Anda',
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            controller: _controllerNomor,
            maxLength: 12,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.call,
                color: Colors.blue,
              ),
              hintText: 'Maskan Nomor',
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          const Spacer(),
          FlatButton(
            height: 50,
            color: Colors.blue,
            onPressed: () {
              Navigator.pop(
                  context,
                  ContactsModel(
                      name: _controllerName.text,
                      nomor: _controllerNomor.text));
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Text(
              'Submit',
              style:
                  h2.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _createNewContact(),
      body: _bodyContent(context),
    );
  }
}
