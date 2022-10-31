import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_cart/models/product.dart';
import 'package:shopping_cart/ui/product_card.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
          name: "Shoe 1",
          id: "1",
          price: 12900,
          image: 'assets/sepatu1.jpg',
          description: "This is a Shoe"),
      Product(
          name: "Shoe 2",
          id: "2",
          price: 12900,
          image: 'assets/sepatu2.jpg',
          description: "This is another Shoe"),
      Product(
          name: "Shoe 3",
          id: "3",
          price: 12900,
          image: 'assets/sepatu3.jpg',
          description: "This is also a Shoe")
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
        ),
        title: const Text('Catalog'),
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/shopping_cart'),
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ProductCard(product: products[index]),
        itemCount: products.length,
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
