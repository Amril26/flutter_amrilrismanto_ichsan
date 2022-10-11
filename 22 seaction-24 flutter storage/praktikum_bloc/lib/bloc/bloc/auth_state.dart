part of 'auth_bloc.dart';

@immutable
abstract class AuthState extends Equatable {
  final String name, email, phone;

  const AuthState(this.name, this.email, this.phone);

  @override
  List<Object?> get props => [name, email, phone];
}

class AuthInitial extends AuthState {
  const AuthInitial(super.name, super.email, super.phone);

  @override
  List<Object?> get props => [name, email, phone];
}

class DataLoaded extends AuthState {
  const DataLoaded(super.name, super.email, super.phone);

  @override
  List<Object?> get props => [name, email, phone];
}
