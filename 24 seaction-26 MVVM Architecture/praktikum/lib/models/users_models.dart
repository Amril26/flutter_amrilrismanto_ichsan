class UserModel {
  final String fristName, lastName, email, avatar;

  UserModel(
      {required this.fristName,
      required this.lastName,
      required this.email,
      required this.avatar});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      fristName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      avatar: json['avatar'],
    );
  }
}
