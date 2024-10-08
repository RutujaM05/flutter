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
            "Appbar And Container",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 5),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrBwARZpC1OVgQCHh9JbNmL52o4rWFjVwlEw&s",
                width: 150,
                height: 150,
                //fit: BoxFit.cover,
              ),
              const SizedBox(height: 5),
              Image.network(
                "https://static.pexels.com/photos/36753/flower-purple-lical-blosso.jpg",
                width: 150,
                height: 150,
                //fit: BoxFit.cover
              ),
              const SizedBox(height: 5),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoT0F2Nbm7TnnIh4aNtiYeip-fAn96gtxtLw&s",
                width: 150,
                height: 150,
                //fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
