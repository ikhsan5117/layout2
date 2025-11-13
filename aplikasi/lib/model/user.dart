// import 'dart:convert';

class User {
  final int id;
  final String username;
  final String email;
  final String password;

  // constructor
  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
  });

  // constructor, coversi dari atau ke json

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }


  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, password: $password)';
  }

}