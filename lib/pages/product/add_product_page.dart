import 'package:flutter/material.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        //actions: [],
        title: const Text("Add Product"),
        // leading: IconButton(
        //   onPressed: () {
        //     context.push('/');
        //   },
        //   icon: const Icon(Icons.arrow_back),
        // ),
      ),
    );
  }
}
