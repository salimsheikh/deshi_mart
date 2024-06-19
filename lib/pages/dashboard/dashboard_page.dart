import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

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
              "Dashboard",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(width: 30),
      ],
    );
  }
}
