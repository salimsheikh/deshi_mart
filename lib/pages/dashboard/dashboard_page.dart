import 'package:deshi_mart/configs/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        const SizedBox(height: 30),
        const Row(
          children: [
            DashboardStaticsWidget(),
            DashboardStaticsWidget(),
            DashboardStaticsWidget(),
          ],
        ),
      ],
    );
  }
}

class DashboardStaticsWidget extends StatelessWidget {
  const DashboardStaticsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.2),
                borderRadius: BorderRadius.circular(100),
              ),
              child: SvgPicture.asset(
                IconsAssets.cart,
                width: 25,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total Order",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  "3652",
                  style: Theme.of(context).textTheme.headlineMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
