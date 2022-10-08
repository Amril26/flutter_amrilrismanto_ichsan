import 'package:flutter/material.dart';
import 'package:praktikum/pages/add_contact.dart';
import 'package:praktikum/providers/contact_provider.dart';
import 'package:praktikum/themes/style_all.dart';
import 'package:provider/provider.dart';

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
    return Consumer<ContactsProvider>(
      builder: (context, value, child) => value.listContacts.isNotEmpty
          ? ListView.builder(
              itemCount: value.listContacts.length,
              itemBuilder: (context, index) => _cardMyContacts(
                  name: value.listContacts[index].name,
                  nomor: value.listContacts[index].nomor),
            )
          : _emptyContent(),
    );
  }

  _animationTransition() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => AddContact(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Widget _floationgActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(_animationTransition()).then(
            (value) => context.read<ContactsProvider>().getDataContacts());
      },
      child: const Center(
        child: Icon(Icons.person_add_alt_rounded),
      ),
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
