import 'package:application_1/latihan/pages/page1.dart';
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
        child: Text("Ini halaman 2")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
        ),
        floatingActionButtonLocation: 
        FloatingActionButtonLocation.centerFloat,
    );
  }
}