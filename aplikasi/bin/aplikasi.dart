// import 'package:aplikasi/helper/produk_helper.dart';
import 'package:aplikasi/helper/user_helper.dart' as users;
import 'package:aplikasi/model/user.dart';

void main(List<String> arguments) async {
  // ambilProduk();
  print("Sedang mengambil data user...");
  // mengambil objek untuk menampung data user
  User pengguna = await users.UserHelper().getUserById(2);
  print(pengguna);
}
