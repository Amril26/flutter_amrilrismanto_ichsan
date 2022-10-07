import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:praktikum/models/contacts_model.dart';

part 'contact_bloc_event.dart';
part 'contact_bloc_state.dart';

class ContactBlocBloc extends Bloc<ContactBlocEvent, ContactBlocState> {
  ContactBlocBloc() : super(ContactBlocInitial(contacts: [])) {
    List contact = [];

    on<AddContactsEvent>(
      (event, emit) {
        contact.add(ContactsModel(name: event.name, nomor: event.nomor));

        emit(ContactBlocLoaded(contacts: contact));
      },
    );
  }
}
