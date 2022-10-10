import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_prov/pages/home_page.dart';
import 'package:praktikum_prov/pages/widgets/form_custom_widget.dart';
import 'package:praktikum_prov/providers/register_provider.dart';
import 'package:praktikum_prov/themes/themes_app.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final TextEditingController _inputName = TextEditingController();
  final TextEditingController _inputEmail = TextEditingController();
  final TextEditingController _inputPhone = TextEditingController();
  final TextEditingController _inputPassword = TextEditingController();
  final GlobalKey _keyInputName = GlobalKey<FormState>();
  final GlobalKey _keyInputEmail = GlobalKey<FormState>();
  final GlobalKey _keyInputPhone = GlobalKey<FormState>();
  final GlobalKey _keyInputPassword = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headers(),
              const SizedBox(
                height: 50,
              ),
              _formRegister(),
              const SizedBox(
                height: 30,
              ),
              Consumer<RegisterProvider>(
                builder: (context, valueRegister, child) =>
                    StatefulBuilder(builder: (context, setState) {
                  return FlatButton(
                    color: primaryColor,
                    minWidth: double.infinity,
                    height: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    onPressed: () async {
                      valueRegister.validateRegister(
                          email: _inputEmail.text,
                          name: _inputName.text,
                          phone: _inputPhone.text);
                      // if (valueRegister.isLoading == false) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                      // }
                      setState(() {});
                    },
                    child: valueRegister.isLoading == true
                        ? const CupertinoActivityIndicator(
                            color: Colors.white,
                          )
                        : Text(
                            'DAFTAR',
                            style: h1.copyWith(
                                color: Colors.white, letterSpacing: 1.5),
                          ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  _formRegister() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormRegisterCustom(
          globalKey: _keyInputName,
          title: 'Name',
          hintText: 'Masukan Name',
          controller: _inputName,
          obsucreText: false,
          inputType: TextInputType.text,
        ),
        const SizedBox(
          height: 10,
        ),
        FormRegisterCustom(
          globalKey: _keyInputEmail,
          title: 'Email',
          hintText: 'Masukan Email',
          controller: _inputEmail,
          obsucreText: false,
          inputType: TextInputType.text,
        ),
        const SizedBox(
          height: 10,
        ),
        FormRegisterCustom(
          globalKey: _keyInputPhone,
          title: 'Phone number',
          hintText: '+26',
          controller: _inputPhone,
          obsucreText: false,
          inputType: TextInputType.number,
        ),
        const SizedBox(
          height: 0,
        ),
        FormRegisterCustom(
          globalKey: _keyInputPassword,
          title: 'Password',
          hintText: '*********',
          controller: _inputPassword,
          obsucreText: true,
          inputType: TextInputType.name,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  _headers() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/logo-alta.png',
          height: 60,
        ),
        const SizedBox(
          height: 45,
        ),
        Text(
          'Register',
          style: h1.copyWith(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        Text(
          'Yuk daftar akun untuk bergabung!',
          style: h2.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
