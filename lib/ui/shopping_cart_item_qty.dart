import 'package:flutter/material.dart';

class ShoppingCartItemQty extends StatefulWidget {
  const ShoppingCartItemQty({super.key});

  @override
  State<ShoppingCartItemQty> createState() => _ShoppingCartItemQtyState();
}

class _ShoppingCartItemQtyState extends State<ShoppingCartItemQty> {
  int _qty = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
          IconButton(
              onPressed: () => setState(() {
                    if (_qty > 1) _qty--;
                  }),
              icon: const Icon(Icons.remove)),
          Text('$_qty'),
          IconButton(
              onPressed: () => setState(() {
                    _qty++;
                  }),
              icon: const Icon(Icons.add))
        ],
      ),
    );
  }
}
