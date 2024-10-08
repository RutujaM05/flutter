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
            "AppBar And Container",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: Text(
            'Hello World!',
            style: (TextStyle(fontSize: 30)),
          ),
        ),
      ),
    );
  }
}
