import 'package:application_1/latihan/pages/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 1"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text("Ini halaman 1")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //mengunakan route
            Navigator.pushNamed(context, "/halaman2");
          //   Navigator.push(
          //     context, 
          //     MaterialPageRoute(
          //       builder: (context) {
          //     return Page2();
          //   },
          //   ),
          //  );
          },
          child: Icon(Icons.arrow_forward),
        ),
        floatingActionButtonLocation: 
        FloatingActionButtonLocation.centerFloat,
    );
  }
}