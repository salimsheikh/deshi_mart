import 'package:flutter/material.dart';

class HoverEffect extends StatefulWidget {
  final Widget Function(bool isHover) builder;

  const HoverEffect({super.key, required this.builder});

  @override
  State<HoverEffect> createState() => _HoverEffectState();
}

class _HoverEffectState extends State<HoverEffect> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (value) {
        setState(() {
          isHover = false;
        });
      },
      child: widget.builder(isHover),
    );
  }
}
