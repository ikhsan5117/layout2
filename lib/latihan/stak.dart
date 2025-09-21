import 'package:flutter/material.dart';

class Stak extends StatelessWidget {
  const Stak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Stak"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.yellow,
      ),
      body: Center(
        child: Container(
          width: 450,
          height: 400,
          color: Colors.cyan,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: -100,
                left: 25,
                child: Container(
                  width: 300,
                  height: 200,
                  color: const Color.fromARGB(255, 2, 64, 13),
                ),
              ),
              Align(
                alignment: Alignment(0.5, 0.9),
                child: Container(width: 100, height: 100, color: Colors.amber),
              ),
              Positioned(bottom: 10, left: 76, child: Text("Ini Anak Stack")),
            ],
          ),
        ),
      ),
    );
  }
}
