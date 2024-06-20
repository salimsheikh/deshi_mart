import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.info),
                    Text("Product Details"),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const Text("Product name"),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Product Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        width: 0.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
