part of 'contact_bloc_bloc.dart';

@immutable
abstract class ContactBlocState extends Equatable {
  List contacts;

  ContactBlocState({required this.contacts});
  @override
  // TODO: implement props
  List<Object?> get props => [contacts];
}

class ContactBlocInitial extends ContactBlocState {
  ContactBlocInitial({required super.contacts});

  @override
  List<Object?> get props => [];
}

class ContactBlocLoading extends ContactBlocState {
  ContactBlocLoading({required super.contacts});

  @override
  List<Object?> get props => [];
}

class ContactBlocLoaded extends ContactBlocState {
  ContactBlocLoaded({required super.contacts});
  @override
  // TODO: implement props
  List<Object?> get props => [contacts];
}

class ContactBlocFailed extends ContactBlocState {
  ContactBlocFailed({required super.contacts});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}


// Initial (State ini ditampilkan di UI ketika bloc tidak melakukan apa-apa atau dalam status idle).
// Loading (State ini ditampilkan di UI ketika bloc mulai melakukan penambahan kontak hingga selesai prosesnya)
// Loaded (State ini ditampilkan di UI ketika bloc selesai melakukan penambahan kontak baru, dan menampilkan daftar kontak tersebut ke dalam UI). 
// Failed (State ini ditampilkan di UI ketika terjadi error pada saat melakukan penambahan kontak baru di bloc).