import 'package:flutter/material.dart';

class Gambar extends StatelessWidget {
  const Gambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan asset gambar"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Image.asset("Gambar/images.jpeg", width: 150, height: 100),
          Image(image: AssetImage("Gambar/images.jpeg"), width: 200, height: 150),
          Container(
            width: 500,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              image: DecorationImage(image: 
              AssetImage("Gambar/images.jpeg"),fit: BoxFit.cover
              )
            ),
          )
        ],
      ),
    );
  }
}