import 'package:deshi_mart/widgets/dropdown_field.dart';
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
          const BoxDecoration(color: Color.fromARGB(255, 218, 218, 218)),
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
                Text(
                  "Product name",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Product Name',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Enter product descriptions',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Category",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Category',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const DropdownField(),
                Text(
                  "Sub Category",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Sub Category',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Text('Active'),
                    const SizedBox(width: 10),
                    Transform.scale(
                      scale: 0.5,
                      child: Switch(value: true, onChanged: (value) {}),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
