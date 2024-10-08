import 'package:flutter/material.dart';

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
          title: const Text(
            "Column Scroll",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
              ),
              Container(
                height: 50,
                width: 550,
                color: Colors.amber,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRokM1z6_j4c5vEdNrtrobSqJAp_mLmJOqxQCQ1xHaG-IFDXLir5yEPQl2rl_JkpDLemE0&usqp=CAU",
              ),
              Container(
                height: 50,
                width: 550,
                color: Colors.amber,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKMaqTbi0Bj_r-bl6kVoFQcA0S9e1Trxo0HFqR2pZ4u2dWkftY5mW4rOtdLgVQtMYtcPg&usqp=CAU",
              ),
              Container(
                height: 50,
                width: 550,
                color: Colors.amber,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_EZ7L-Ehpd731tmz0hklIq_IteOi2tb4R6Q&s",
              ),
              Container(
                height: 50,
                width: 550,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
