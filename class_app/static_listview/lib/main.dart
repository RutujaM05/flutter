import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device Width : ${MediaQuery.of(context).size.width}");
    print("Device height : ${MediaQuery.of(context).size.width}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(children: [
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvmySAplGPEKy3V-VEN3EzeSKP9Sp5dLWVhQ&s",
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Text("Indian Cricketer's",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKxSKCuBRk_pslrHvnjgPNuFzDRg8m9V9d8FyIwkNkF08rQ58WtAHV67ZrWZTBNEWaimg&usqp=CAU",
          ),
          GestureDetector(
              onTap: () {
                print("Button Pressed");
              },
              child: Container(
                height: 50,
                color: Colors.amber,
                child: const Text("Press Me"),
              ))
        ]),
      ),
    );
  }
}
