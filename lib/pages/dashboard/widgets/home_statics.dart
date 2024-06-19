import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeStatics extends StatelessWidget {
  final String label;
  final String value;
  final String icon;
  final String iconBgColor;

  const HomeStatics({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    required this.iconBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(int.parse(iconBgColor)).withOpacity(0.2),
                borderRadius: BorderRadius.circular(100),
              ),
              child: SvgPicture.asset(
                icon,
                width: 25,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  value,
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
