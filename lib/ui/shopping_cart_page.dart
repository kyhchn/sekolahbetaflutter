import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_cart/models/product.dart';
import 'package:shopping_cart/ui/shopping_cart_item_qty.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> items = [];
    for (int i = 1; i <= 30; i++) {
      items.add(Product(
          name: "Sepatu $i",
          id: i.toString(),
          price: i * 10000,
          image: (i % 2 == 0)
              ? 'assets/sepatu2.jpg'
              : (i % 3 == 0)
                  ? 'assets/sepatu3.jpg'
                  : 'assets/sepatu1.jpg'));
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Shopping cart'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(items[index].name),
                      leading: Image.asset(
                        items[index].image,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                      subtitle: Text('Rp.${items[index].price}'),
                    ),
                    const ShoppingCartItemQty()
                  ],
                ),
              )),
    );
  }
}
