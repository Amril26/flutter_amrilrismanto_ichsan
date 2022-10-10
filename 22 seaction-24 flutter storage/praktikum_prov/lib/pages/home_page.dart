import 'package:flutter/material.dart';
import 'package:praktikum_prov/providers/register_provider.dart';
import 'package:praktikum_prov/themes/themes_app.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<RegisterProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // https://i.stack.imgur.com/NEuip.jpg
      body:
          Consumer<RegisterProvider>(builder: (context, valueRegister, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://i.stack.imgur.com/NEuip.jpg',
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 5),
              child: Text(
                valueRegister.data['name'],
                style: h1.copyWith(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Text(
                valueRegister.data['email'],
                style: h3.copyWith(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Text(
                valueRegister.data['phone'],
                style: h3.copyWith(fontSize: 18),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FlatButton(
                color: primaryColor,
                minWidth: double.infinity,
                height: 55,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                onPressed: () {
                  context.read<RegisterProvider>().logout(context);
                },
                child: Text(
                  'LOGOUT',
                  style: h1.copyWith(color: Colors.white, letterSpacing: 1.5),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        );
      }),
    );
  }
}
