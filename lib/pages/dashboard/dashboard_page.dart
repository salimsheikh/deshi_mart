import 'package:deshi_mart/configs/assets_path.dart';
import 'package:deshi_mart/pages/dashboard/widgets/home_statics.dart';
import 'package:deshi_mart/pages/dashboard/widgets/order_history.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    var statics = [
      {
        "label": "Total Orders",
        "value": "220",
        "iconBgColor": "0xff019934",
        "icon": IconsAssets.cart
      },
      {
        "label": "Pending Order",
        "value": "65",
        "iconBgColor": "0xffEE0000",
        "icon": IconsAssets.refresh
      },
      {
        "label": "Processing Order",
        "value": "65",
        "iconBgColor": "0xff1400FC",
        "icon": IconsAssets.car
      },
      {
        "label": "Completed Order",
        "value": "23",
        "iconBgColor": "0xff019934",
        "icon": IconsAssets.done
      }
    ];
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: statics
              .map(
                (e) => Expanded(
                  child: HomeStatics(
                    label: e["label"]!,
                    icon: e["icon"]!,
                    value: e["value"]!,
                    iconBgColor: e["iconBgColor"]!,
                  ),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 30),
        const OrderHistory(),
      ],
    );
  }
}
