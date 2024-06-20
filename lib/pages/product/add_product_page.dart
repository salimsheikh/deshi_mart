import 'package:deshi_mart/pages/product/widgets/product_details.dart';
import 'package:flutter/material.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Add Product"),
      ),
      body: const Row(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                ProductDetails(),
              ],
            ),
          )),
          Expanded(child: Text("Right")),
        ],
      ),
    );
  }
}
