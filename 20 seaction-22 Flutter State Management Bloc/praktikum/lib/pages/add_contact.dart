import 'package:flutter/material.dart';
import 'package:praktikum/bloc/bloc/contact_bloc_bloc.dart';
import 'package:praktikum/themes/style_all.dart';
import 'package:provider/provider.dart';

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
            keyboardType: TextInputType.number,
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
              context.read<ContactBlocBloc>().add(AddContactsEvent(
                  name: _controllerName.text, nomor: _controllerNomor.text));
              Navigator.pop(context);
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
      appBar: _createNewContact(),
      body: _bodyContent(context),
    );
  }
}
