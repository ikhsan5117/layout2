// import file lain
import 'package:application_1/latihan/tugas2.dart';
import 'package:application_1/tugas/Hp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: kuis1()
    );
  }
}
