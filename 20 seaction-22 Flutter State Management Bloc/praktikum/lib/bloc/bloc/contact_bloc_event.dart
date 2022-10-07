part of 'contact_bloc_bloc.dart';

@immutable
abstract class ContactBlocEvent extends Equatable {
  const ContactBlocEvent();
}

class AddContactsEvent extends ContactBlocEvent {
  final String name, nomor;

  const AddContactsEvent({required this.name, required this.nomor});

  @override
  List<Object?> get props => [name, nomor];
}
