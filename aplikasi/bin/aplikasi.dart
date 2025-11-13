// import 'package:aplikasi/helper/produk_helper.dart';
import 'package:aplikasi/helper/user_helper.dart' as users;
import 'package:aplikasi/model/user.dart';

void main(List<String> arguments) async {
  // ambilProduk();
  print("Ambil data dari user...");
  User pengguna = await users.getUserById(5);
  print(pengguna.password);
}
