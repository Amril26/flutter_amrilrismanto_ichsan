import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:praktikum_prov/spref_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitial('', '', '')) {
    on<AuthLoginEvent>((event, emit) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool(SprefKey.isLogin, true);
      prefs.setString(SprefKey.name, event.name);
      prefs.setString(SprefKey.email, event.email);
      prefs.setString(SprefKey.phone, event.phone);
    });

    on<GetDataEvent>((event, emit) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String name = prefs.getString(SprefKey.name)!;
      String email = prefs.getString(SprefKey.email)!;
      String phone = prefs.getString(SprefKey.phone)!;
      emit(DataLoaded(name, email, phone));
    });

    on<LogoutEvent>((event, emit) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.clear();
    });
  }
}
