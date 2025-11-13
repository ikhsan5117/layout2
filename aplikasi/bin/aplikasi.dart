// import 'package:aplikasi/helper/produk_helper.dart';
import 'package:aplikasi/helper/user_helper.dart' as users;
import 'package:aplikasi/helper/user_helper.dart';
import 'package:aplikasi/model/user.dart';

void main(List<String> arguments) async {
  // ambilProduk();
  print("Sedang mengambil data user...");
  // mengambil objek untuk menampung data user
  User pengguna = await users.UserHelper().getUserById(3);
  print("Email user: ${pengguna.email}");

  // membuat user baru
  User p = User(id: 10, username: "andi", email: "andi@example.com", password: "1234");
  int idUserBaru = await UserHelper().createUser(p);
  print("id user yang baru dibuat : $idUserBaru");
}
