import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_prov/bloc/bloc/auth_bloc.dart';
import 'package:praktikum_prov/pages/register_page.dart';
import 'package:praktikum_prov/themes/themes_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(GetDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // https://i.stack.imgur.com/NEuip.jpg
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
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
                  state.name,
                  style: h1.copyWith(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                child: Text(
                  state.email,
                  style: h3.copyWith(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                child: Text(
                  state.phone,
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
                    context.read<AuthBloc>().add(LogoutEvent());
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => RegisterPage()));
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
        },
      ),
    );
  }
}
