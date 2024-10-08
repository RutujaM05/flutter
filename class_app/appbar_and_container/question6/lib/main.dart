import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            " MyApp",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.yellow,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.purple,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
