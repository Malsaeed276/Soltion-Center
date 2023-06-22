class UserModel {
  String? userId;
  String? username;
  String? email;
  String? password;
  bool? admin;

  UserModel({
    this.userId,
    this.username,
    required this.email,
    required this.password,
    this.admin = false,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    email = json['email'];
    username = json['username'];
    admin = json['admin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['email'] = email;
    data['username'] = username;
    data['admin'] = admin ?? false;
    return data;
  }
}