import 'dart:async';
import 'dart:convert';

import 'package:aplikasi/model/user.dart';
import 'package:http/http.dart' as http;

class UserHelper {
  final Map<String,String> _header ={
    "Content-Type":"application/json"
  };

  //method mendapatkan semua data user
  Future<List<dynamic>> getAllUsers() async {
    var url = Uri.parse("https://fakestoreapi.com/users");
    try {
      var respon = await http.get(url);
      if(respon.statusCode == 200){
        var json = jsonDecode(respon.body);
        return json.map((item) => User.fromMap(item)).toList();
      } else {
        throw Exception("Error status code: ${respon.statusCode}");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }

  // method update user
  Future<User> updateUser(User p) async{
    var url = Uri.parse("https://fakestoreapi.com/users/${p.id}");
    try {
      var respon = await http.put(url,headers: _header, body: jsonEncode(p.toMap()),);
      if(respon.statusCode == 200){
        var json = jsonDecode(respon.body);
        return User.fromMap(json);
      } else {
        throw Exception("Gagal mengupdate user dengan kode: ${respon.statusCode}");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
  


  // method membuat user baru
  Future<int> createUser(User p) async{
    var url = Uri.parse("https://fakestoreapi.com/users");
    try {
      var respon = await http.post(url,headers: _header, body: jsonEncode(p.toMap()),);
      if(respon.statusCode == 201){
        var json = jsonDecode(respon.body);
        return json['id'];
      } else {
        throw Exception("Gagal membuat user baru dengan kode: ${respon.statusCode}");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }


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