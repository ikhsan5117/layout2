import 'package:flutter/material.dart';

class Latihanl extends StatelessWidget {
  const Latihanl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Always be in touch",
            softWrap: true,
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.w500),
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: 300,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: const Color.fromARGB(255, 237, 167, 250),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Vivo", style: TextStyle(color: Colors.black)), Text("Brazil")]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("5GB", style: TextStyle(fontSize: 20),), Text("Valid For 30 days", style: TextStyle(color: Colors.blueGrey))],
                      ),
                      Text("\$15", style: TextStyle(color: const Color.fromARGB(255, 7, 0, 0), fontSize: 20) )
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
              width: 300,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: const Color.fromARGB(255, 237, 167, 250),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Vivo", style: TextStyle(color: Colors.black)), Text("Brazil")]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("5GB", style: TextStyle(fontSize: 20),), Text("Valid For 30 days", style: TextStyle(color: Colors.blueGrey))],
                      ),
                      Text("\$15", style: TextStyle(color: const Color.fromARGB(255, 7, 0, 0), fontSize: 20) )
                    ],
                  ),
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.all(15),
              width: 300,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: const Color.fromARGB(255, 237, 167, 250),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Vivo", style: TextStyle(color: Colors.black)), Text("Brazil")]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("5GB", style: TextStyle(fontSize: 20),), Text("Valid For 30 days", style: TextStyle(color: Colors.blueGrey))],
                      ),
                      Text("\$15", style: TextStyle(color: const Color.fromARGB(255, 7, 0, 0), fontSize: 20) )
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}