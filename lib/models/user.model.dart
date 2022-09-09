class UserModel {
  final int? id;
  final String email;
  final String password;

  UserModel(
    this.id,
    this.email,
    this.password,
  );

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        password = json['password'];

  Map<String, dynamic> toJson() => {
        'name': id,
        'email': email,
        'password': password,
      };
}
