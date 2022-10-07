import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum/bloc/bloc/contact_bloc_bloc.dart';
import 'package:praktikum/pages/add_contact.dart';
import 'package:praktikum/themes/style_all.dart';

class HomePage extends StatelessWidget {
  static String rootNamed = '/';
  const HomePage({Key? key}) : super(key: key);

  _appBar() {
    return AppBar(
      title: const Text('Contacs'),
    );
  }

  Widget _cardMyContacts({required String name, required String nomor}) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(name[0]),
      ),
      title: Text(
        name,
        style: h1,
      ),
      subtitle: Text(
        nomor,
        style: p1,
      ),
    );
  }

  _emptyContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/empty_contacs.png',
            width: 200,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Contact kamu kosong nih,\n Tambahkan teman untuk mengobrol',
            textAlign: TextAlign.center,
            style: h1.copyWith(fontSize: 16, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget _bodyContent() {
    return BlocBuilder<ContactBlocBloc, ContactBlocState>(
        builder: ((context, state) {
      if (state is ContactBlocLoaded) {
        return ListView.builder(
          itemCount: state.contacts.length,
          itemBuilder: (context, index) => _cardMyContacts(
              name: '${state.contacts[index].name}',
              nomor: '${state.contacts[index].nomor}'),
        );
      } else {
        return Container(
          color: Colors.red,
        );
      }
    }));
    // : _emptyContent(),
    // );
  }

  Widget _floationgActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, AddContact.rootNamed);
      },
      child: const Icon(Icons.person_add_alt_rounded),
    );
  }

  //NOTE: CORE CODE
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: _bodyContent(),
      floatingActionButton: _floationgActionButton(context),
    );
  }
}
