import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/hello.svg',
              height: 100,
              width: 100,
            ),
            const Text(
              'Hello',
              style: TextStyle(fontSize: 40),
            ),
            const Text(
              'World!',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
