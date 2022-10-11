part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthLoginEvent extends AuthEvent {
  final String name, email, phone;

  AuthLoginEvent(this.name, this.email, this.phone);

  @override
  List<Object?> get props => [name, email, phone];
}

class LogoutEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class GetDataEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}
