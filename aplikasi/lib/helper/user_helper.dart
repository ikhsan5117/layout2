import 'dart:convert';

import 'package:aplikasi/model/user.dart';
import 'package:http/http.dart' as http;

class UserHelper {
  Future<User> getUserById(int id) async {
    var url = Uri.parse("https://fakestoreapi.com/users/$id");
    try {
      var respon = await http.get(url);
      if (respon.statusCode == 200) {
        // konversi respon ke format map
        var json = jsonDecode(respon.body);
        // konversi menjadi objek User
        return User.fromMap(json);
      } else {
        int kode = respon.statusCode;
        throw Exception("Gagal mendapatkan user dengan kode: $kode");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}