import 'package:flutter/material.dart';

class List2 extends StatelessWidget {
  const List2({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> mhs = [
        {"nama":"Mawar", "usia":18},
        {"nama":"Melati", "usia":19},
        {"nama":"Anggrek", "usia":20},
        {"nama":"Kamboja", "usia":21},
        {"nama":"Lili", "usia":22},
       ];
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Layout"),),
      body: ListView.builder(
        itemCount: mhs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            decoration: BoxDecoration(color: mhs[index]["usia"] <= 20 ? Colors.red : Colors.blue),
            child: ListTile(
              title: Text(mhs[index]["nama"]),
              subtitle: Text(mhs[index]["usia"].toString()),
            ),
            ),
          );
        },
        )
    );
  }
}