// import 'package:aplikasi/helper/produk_helper.dart';
import 'package:aplikasi/helper/user_helper.dart';
import 'package:aplikasi/model/user.dart';
import 'package:aplikasi/helper/cart_helper.dart';
import 'package:aplikasi/model/cart.dart';

void main(List<String> arguments) async {
  // ambilProduk();
  print("Sedang mengambil data user...");
  // mengambil objek untuk menampung data user
  User pengguna = await UserHelper().getUserById(2);
  print(pengguna.username);
  print("Email user: ${pengguna.email}");

  // membuat user baru
  User p = User(id: 10, username: "andi", email: "andi@example.com", password: "1234");
  int idUserBaru = await UserHelper().createUser(p);
  print("id user yang baru dibuat : $idUserBaru");

  // update user
  User up = User(id: 2, username: "budi", email: "budi@example.com", password: "5678");
  User hasil = await UserHelper().updateUser(up);
  print("Ini hasil update $hasil");

  // ignore: unused_local_variable
  List<dynamic> coba = await UserHelper().getAllUsers();
  print(coba[0].username);

  // --- contoh penggunaan CartHelper ---
  print('\nContoh penggunaan CartHelper:');
  var cartHelper = CartHelper();
  // ambil semua cart (contoh, hanya menampilkan jumlah)
  try {
    var all = await cartHelper.getAllCarts();
    print('Jumlah cart: ${all.length}');
    if (all.isNotEmpty) print('Cart pertama: ${all.first}');
  } catch (e) {
    print('Gagal ambil cart: $e');
  }

  // membuat cart baru (contoh)
  try {
    var newCart = Cart(id: 0, userId: 2, date: DateTime.now(), products: [CartItem(productId: 1, quantity: 2)]);
    var idBaru = await cartHelper.createCart(newCart);
    print('Cart dibuat dengan id: $idBaru');
  } catch (e) {
    print('Gagal membuat cart: $e');
  }


}
