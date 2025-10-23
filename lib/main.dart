// import file lain
import 'package:application_1/latihan/UTS_IKHSAN_NPM.dart';
import 'package:application_1/latihan/text_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyUTS()
    );
  }
}
