import 'package:flipcard/models/product.dart';
import 'package:flipcard/widgets/product_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flip Card Demo'),
        ),
        body: GridView.builder(
          itemCount: listProduct.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 100 / 120,
          ),
          itemBuilder: (context, index) {
            return ProductItem(product: listProduct[index]);
          },
        ));
  }
}
