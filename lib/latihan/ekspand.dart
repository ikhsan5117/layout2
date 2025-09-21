import 'package:flutter/material.dart';

class Ekspand extends StatelessWidget {
  const Ekspand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan expand")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Container(height: 200, color: Colors.amber,)),
              Expanded(
                flex: 3,
                child: Container(height: 200, color: Colors.blue,)),
                Expanded(
                flex: 2,
                child: Container(height: 200, color: Colors.red,)),
            ],
          ),
        ),
    );
  }
}