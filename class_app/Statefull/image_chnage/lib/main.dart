import "package:flutter/material.dart";

void main() {
  runApp(const Player());
}

class Player extends StatefulWidget {
  const Player({super.key});
  @override
  State createState() => _PlayerState();
}

class _PlayerState extends State {
  List playerList = [
    "https://images.unsplash.com/photo-1530092285049-1c42085fd395?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFHxqnLamOX8_IXz61OhVjsorCVJePEXFPLw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4H2cZjW8fBnbkelR7zjk9PabnFWvGBBfkzg&s",
    "https://images.pexels.com/photos/36753/flower-purple-lical-blosso.jpg?cs=srgb&dl=pexels-pixabay-36753.jpg&fm=jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxGYi3_C_92xICEsFEL68Fe5fSy99nmo4Tsw&s"
  ];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Players Image"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SizedBox(
              height: 350, width: 350, child: Image.network(playerList[count])),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (count < playerList.length - 1) {
              count++;
            } else {
              count = 0;
            }
            setState(() {});
          },
        ),
      ),
    );
  }
}
