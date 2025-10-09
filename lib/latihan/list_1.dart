import 'package:flutter/material.dart';

class State1 extends StatefulWidget {
  const State1({super.key});

  @override
  State<State1> createState() => _State1State();
}

class _State1State extends State<State1> {
  int totalKlik = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan state"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hasil dar klik"),
            Text(totalKlik.toString(), style: TextStyle(fontSize: 28)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            totalKlik += 1;
          });
          print(totalKlik);
        }, 
        child: Icon(Icons.add),
      ),
    );
  }
}