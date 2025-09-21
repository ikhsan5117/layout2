import 'package:flutter/material.dart';

void main() {
  runApp(const LatihanBaris());
}

class LatihanBaris extends StatelessWidget {
  const LatihanBaris({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Baris"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(width: 100,height: 50,color: Colors.blue),
          Container(width: 200,height: 200,color: Colors.greenAccent),
          Container(width: 150,height: 125,color: Colors.red),
        ],
      ),
    );
  }
}