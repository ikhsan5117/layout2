import 'package:flutter/material.dart';

class List1 extends StatelessWidget {
  const List1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Layout"),),
      body: ListView(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(color: Colors.lightBlue),
          ),
          Container(height: 400, decoration: BoxDecoration(color: Colors.greenAccent),)
        ],
      ),
    );
  }
}