import 'package:flutter/material.dart';
import 'package:shopping_cart/ui/shopping_cart_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoped',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ShoppingCartPage(),
    );
  }
}
