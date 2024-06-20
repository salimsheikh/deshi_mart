import 'package:deshi_mart/widgets/hover_effect.dart';
import 'package:flutter/material.dart';

class PrimaryIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color color;

  const PrimaryIconButton({
    super.key,
    required this.color,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: HoverEffect(
        builder: (isHover) => AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            color: isHover ? color : color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isHover ? Colors.white : color,
              )
            ],
          ),
        ),
      ),
    );
  }
}
