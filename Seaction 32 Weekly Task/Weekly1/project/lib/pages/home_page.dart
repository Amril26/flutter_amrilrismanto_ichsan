import 'package:flutter/material.dart';
import 'package:project/widget/form_custom.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final TextEditingController _textFirstName = TextEditingController();
  final TextEditingController _textLastName = TextEditingController();
  final TextEditingController _textEmail = TextEditingController();
  final TextEditingController _textDescription = TextEditingController();

  _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Image.asset(
          'assets/logoAR.png',
          width: 10,
          height: 10,
        ),
      ),
      title: const Text(
        'Amril Rismanto Ichsan',
        style: TextStyle(color: Color(0xFF252525)),
      ),
      shadowColor: Colors.transparent,
    );
  }

  _welcomeContent() {
    return Column(
      children: [
        Image.asset(
          'assets/logoAR.png',
          width: 60,
          height: 60,
        ),
        const Text(
          'Welcome Back!',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            color: Color(0XFF252525),
          ),
        ),
        const Text(
          'Mobile App developer',
          style: TextStyle(
            fontSize: 14,
            letterSpacing: 2,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Image.network(
          'https://imgx.sonora.id/crop/0x0:0x0/700x465/photo/2022/09/29/img-0135jpg-20220929114712.jpg',
          width: double.infinity,
          height: 200,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'ただ一つの夢結んでゆずれない\nJangan Pernah Menyerah pada mimpi satu-satunya',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            letterSpacing: 2,
            color: Color(0XFF252525),
          ),
        ),
      ],
    );
  }

  _contactMy() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text(
          'Contact US',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            letterSpacing: 2,
            color: Color(0XFF252525),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:
                    'Need to get in touch with us? Ether fill out the formr with your inqurty or fint the',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(
                    0XFF252525,
                  ),
                ),
              ),
              TextSpan(
                text: ' departement email ',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text: 'you\'d like to cantact below',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(
                    0XFF252525,
                  ),
                ),
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
        Row(
          children: [
            Expanded(
              child: FormCustomEdit(
                title: 'First name',
                controllerEditing: _textFirstName,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FormCustomEdit(
                title: 'Last name',
                controllerEditing: _textLastName,
              ),
            ),
          ],
        ),
        FormCustomEdit(
          title: 'Email',
          controllerEditing: _textEmail,
        ),
        FormCustomEdit(
          title: 'What can we help you with?',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          _welcomeContent(),
          const SizedBox(
            height: 100,
          ),
          _contactMy(),
          const SizedBox(
            height: 20,
          ),
          _formContact(context),
        ],
      ),
    );
  }
}
