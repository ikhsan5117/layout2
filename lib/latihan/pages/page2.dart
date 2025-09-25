import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 2"),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white, 
      ),
      body: Center(
        child: Text("Ini halaman 2"),
      ),
    );
  }
}