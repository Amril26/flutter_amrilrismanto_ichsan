class UsersModel {
  final String id, email, fristName, lastName, avatar;

  UsersModel(
      {required this.id,
      required this.email,
      required this.fristName,
      required this.lastName,
      required this.avatar});

  factory UsersModel.jsonObject(Map<String, dynamic> json) {
    return UsersModel(
      id: json['id'].toString(),
      email: json['email'].toString(),
      fristName: json['first_name'].toString(),
      lastName: json['last_name'].toString(),
      avatar: json['avatar'].toString(),
    );
  }
}
