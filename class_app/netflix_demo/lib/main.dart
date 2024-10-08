import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Netflix Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Action Movies",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          width: 300,
                          height: 200,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJQe7Ui4JoZik7mXXbdVHY61Omy7_u2CY76A&s",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          width: 300,
                          height: 200,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJQe7Ui4JoZik7mXXbdVHY61Omy7_u2CY76A&s",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          width: 300,
                          height: 200,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJQe7Ui4JoZik7mXXbdVHY61Omy7_u2CY76A&s",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          width: 300,
                          height: 200,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJQe7Ui4JoZik7mXXbdVHY61Omy7_u2CY76A&s",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          width: 300,
                          height: 200,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJQe7Ui4JoZik7mXXbdVHY61Omy7_u2CY76A&s",
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
