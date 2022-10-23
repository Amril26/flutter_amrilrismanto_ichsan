import 'package:flutter/material.dart';
import 'package:project/helper/themes.dart';
import 'package:project/widget/form_custom.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final TextEditingController _textFirstName = TextEditingController();
  final TextEditingController _textLastName = TextEditingController();
  final TextEditingController _textEmail = TextEditingController();
  final TextEditingController _textDescription = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  PreferredSize _appBar() {
    return PreferredSize(
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: [
            Container(
              padding: EdgeInsets.all(3),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: colorPrimary),
                  shape: BoxShape.circle),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(
                  Icons.clear_all_rounded,
                  color: colorPrimary,
                ),
              ),
            ),
          ],
          title: Text(
            'Amril Rismanto Ichsan',
            style: gf1,
          ),
          elevation: 0.5,
        ),
        preferredSize: const Size.fromHeight(65));
  }

  _welcomeContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          'Hey There,\n I\'m Amril Rismanto Ichsan',
          style: h1.copyWith(fontSize: 30),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
            'ただ一つの夢結んでゆずれない\nJangan Pernah Menyerah pada mimpi satu-satunya',
            style: h2),
        const SizedBox(
          height: 50,
        ),
        Stack(
          children: [
            Image.asset(
              'assets/background.png',
              width: double.infinity,
              height: 300,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/person.png',
                height: 400,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _aboutUs() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('About Us', style: h1.copyWith(fontSize: 18)),
        const Text('What can I help you with', style: h2),
        const SizedBox(
          height: 16,
        ),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: colorPrimary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FlutterLogo(
                    size: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Development Mobile App",
                    style: h1.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                    textAlign: TextAlign.center,
                    style: h2.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: colorPrimary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/figma_logo.png',
                    height: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "UI/UX",
                    style: h1.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                    textAlign: TextAlign.center,
                    style: h2.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  _contactMy() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Contact US', style: h1.copyWith(fontSize: 18)),
        const SizedBox(
          height: 16,
        ),
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:
                    'if you need colaboration or give me project can contact my on the form',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(
                    0XFF252525,
                  ),
                ),
              ),
              TextSpan(
                text: ' you\'d like to cantact below',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ],
    );
  }

  _formContact(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FormCustomEdit(
          title: 'Email',
          controllerEditing: _textEmail,
        ),
        FormCustomEdit(
          title: 'What can me help you with?',
          controllerEditing: _textDescription,
        ),
        const SizedBox(
          height: 16,
        ),
        RaisedButton(
          color: Colors.blue,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text(
                  'Message',
                  style: TextStyle(color: Colors.blue),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _textFirstName.text + ' ' + _textLastName.text,
                      style: const TextStyle(
                          color: Color(0XFF252525),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      _textEmail.text,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      _textDescription.text,
                      style: const TextStyle(
                        color: Color(0XFF252525),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text(
            'Submit',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
                  fit: BoxFit.fill),
            ),
            child: SizedBox.shrink(),
          ),
          ListTile(
            leading: const Icon(
              Icons.contact_page,
              color: Colors.blue,
            ),
            title: const Text('Contact Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: const Text('About Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 30),
          ListTile(
            leading: const Icon(
              Icons.key,
              color: Colors.blue,
            ),
            title: const Text('Login'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: _appBar(),
      drawer: _drawer(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          _welcomeContent(context),
          _aboutUs(),
          const SizedBox(
            height: 30,
          ),
          _contactMy(),
          const SizedBox(
            height: 30,
          ),
          _formContact(context),
        ],
      ),
    );
  }
}
