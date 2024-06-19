import 'package:deshi_mart/configs/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppDrawerMenu extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final String icon;
  final bool isSelected;

  const AppDrawerMenu(
      {super.key,
      required this.onPress,
      required this.title,
      required this.icon,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: isSelected
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.onPrimaryContainer,
            ),
      ),
      leading: SvgPicture.asset(
        icon,
        width: 20,
        color: isSelected
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      selected: isSelected,
      selectedColor: Colors.white,
      selectedTileColor: Colors.green,
    );
  }
}
