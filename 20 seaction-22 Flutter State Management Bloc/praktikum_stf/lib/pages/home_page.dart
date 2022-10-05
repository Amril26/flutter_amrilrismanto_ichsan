import 'package:flutter/material.dart';
import 'package:praktikum_stf/pages/add_contact.dart';
import 'package:praktikum_stf/themes/style_all.dart';

class HomePage extends StatefulWidget {
  static String rootNamed = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _dataContacs = [];
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
    return ListView.builder(
        itemCount: _dataContacs.length,
        itemBuilder: (context, index) => _cardMyContacts(
              name: _dataContacs[index].name,
              nomor: _dataContacs[index].nomor,
            ));
  }

  Widget _floationgActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final resultContacs =
            await Navigator.pushNamed(context, AddContact.rootNamed);
        setState(() {
          _dataContacs.add(resultContacs);
        });
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
