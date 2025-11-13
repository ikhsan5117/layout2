import 'package:http/http.dart' as http;
import 'package:aplikasi/model/user.dart';

// function ambil data user dari server
Future<User> getUserById(int id)async{
  var alamat = Uri.parse("https://jsonplaceholder.typicode.com/users/$id");
  print("Sedang mengambil data user...");

  // error handler jika terjadi error
  try{
    // lakukan requset ke server
    var respon = await http.get(alamat);
    // cek status code dari server
    if(respon.statusCode == 200){
      User pengguna = User.fromJson(respon.body);
      return pengguna;
    } else {
      // jika gagal
      throw Exception("Gagal mengambil data....");
    }
  } catch(e) {
    throw Exception("Terjadi kesalahan : $e");
  }
}