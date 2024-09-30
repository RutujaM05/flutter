import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.red,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.green,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.pink,
            ),
          ]),
        ),
      ),
    );
  }
}
