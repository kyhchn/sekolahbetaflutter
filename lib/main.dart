import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'helloWorld.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Hello World',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text('Hello Flutter World'),
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/bg.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            HelloWorld()
          ],
        ));
  }
}
