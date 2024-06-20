import 'package:deshi_mart/pages/dashboard/widgets/order_history.dart';
import 'package:deshi_mart/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 7,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            const SizedBox(width: 10),
            Text(
              "Products",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: 30),
        const SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PrimaryButton(
              name: "Add Product",
              icon: Icons.add,
              color: Theme.of(context).colorScheme.primaryContainer,
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 30),
        const OrderHistory(),
      ],
    );
  }
}
