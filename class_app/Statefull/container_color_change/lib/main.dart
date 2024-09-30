import "package:flutter/material.dart";

void main() {
  runApp(const ColorChange());
}

class ColorChange extends StatefulWidget {
  const ColorChange({super.key});
  @override
  State createState() => _ColorChangeState();
}

class _ColorChangeState extends State {
  bool chngcolor = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "first app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Color Change"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 150,
            width: 150,
            color: chngcolor ? Colors.black : Colors.red,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (chngcolor) {
              chngcolor = false;
            } else {
              chngcolor = true;
            }
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
