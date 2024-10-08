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
            " AppBar and Container",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "https://t4.ftcdn.net/jpg/05/70/26/97/360_F_570269734_gE4Za4bdlmm5MLhjScliP4zmOORgDJ3t.jpg",
                  height: 300,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 5),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRopxhys1sDXRymAf4bLHhYOhhM123zapzmtw&s",
                  height: 300,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 5),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDfWiqtVjAjGUToFoQZF0EyB8tZmWtcRy5GVRh_C1UCRv3DUop4E6wXNn40OAij8m9T6Y&usqp=CAU",
                  height: 300,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 5),
                Image.network(
                  "https://t4.ftcdn.net/jpg/05/70/26/97/360_F_570269734_gE4Za4bdlmm5MLhjScliP4zmOORgDJ3t.jpg",
                  height: 300,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 5),
                Image.network(
                  "https://plus.unsplash.com/premium_photo-1677178629088-ba7d3a23049a?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwZmxvd2VyfGVufDB8fDB8fHww",
                  height: 300,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
